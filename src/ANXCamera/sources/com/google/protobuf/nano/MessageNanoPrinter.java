package com.google.protobuf.nano;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MessageNanoPrinter {
    private MessageNanoPrinter() {
    }

    public static <T extends MessageNano> String print(T message) {
        String valueOf;
        String str;
        if (message == null) {
            return "";
        }
        StringBuffer buf = new StringBuffer();
        try {
            print(null, message, new StringBuffer(), buf);
            return buf.toString();
        } catch (IllegalAccessException e) {
            valueOf = String.valueOf(e.getMessage());
            str = "Error printing proto: ";
            return valueOf.length() == 0 ? new String(str) : str.concat(valueOf);
        } catch (InvocationTargetException e2) {
            valueOf = String.valueOf(e2.getMessage());
            str = "Error printing proto: ";
            return valueOf.length() == 0 ? new String(str) : str.concat(valueOf);
        }
    }

    private static void print(String identifier, Object object, StringBuffer indentBuf, StringBuffer buf) throws IllegalAccessException, InvocationTargetException {
        if (object == null) {
            return;
        }
        if (object instanceof MessageNano) {
            int origIndentBufLength = indentBuf.length();
            if (identifier != null) {
                buf.append(indentBuf).append(deCamelCaseify(identifier)).append(" <\n");
                indentBuf.append("  ");
            }
            Class<?> clazz = object.getClass();
            for (Field field : clazz.getFields()) {
                int modifiers = field.getModifiers();
                String fieldName = field.getName();
                if (!("cachedSize".equals(fieldName) || (modifiers & 1) != 1 || (modifiers & 8) == 8 || fieldName.startsWith("_") || fieldName.endsWith("_"))) {
                    Class<?> fieldType = field.getType();
                    Object value = field.get(object);
                    if (!fieldType.isArray()) {
                        print(fieldName, value, indentBuf, buf);
                    } else if (fieldType.getComponentType() != Byte.TYPE) {
                        int len = value != null ? Array.getLength(value) : 0;
                        for (int i = 0; i < len; i++) {
                            print(fieldName, Array.get(value, i), indentBuf, buf);
                        }
                    } else {
                        print(fieldName, value, indentBuf, buf);
                    }
                }
            }
            for (Method method : clazz.getMethods()) {
                String name = method.getName();
                if (name.startsWith("set")) {
                    String subfieldName = name.substring(3);
                    try {
                        String str;
                        String valueOf = String.valueOf(subfieldName);
                        String str2 = "has";
                        if (valueOf.length() == 0) {
                            str = new String(str2);
                        } else {
                            valueOf = str2.concat(valueOf);
                        }
                        if (((Boolean) clazz.getMethod(valueOf, new Class[0]).invoke(object, new Object[0])).booleanValue()) {
                            try {
                                valueOf = String.valueOf(subfieldName);
                                str2 = "get";
                                if (valueOf.length() == 0) {
                                    str = new String(str2);
                                } else {
                                    valueOf = str2.concat(valueOf);
                                }
                                print(subfieldName, clazz.getMethod(valueOf, new Class[0]).invoke(object, new Object[0]), indentBuf, buf);
                            } catch (NoSuchMethodException e) {
                            }
                        }
                    } catch (NoSuchMethodException e2) {
                    }
                }
            }
            if (identifier != null) {
                indentBuf.setLength(origIndentBufLength);
                buf.append(indentBuf).append(">\n");
                return;
            }
            return;
        }
        buf.append(indentBuf).append(deCamelCaseify(identifier)).append(": ");
        if (object instanceof String) {
            buf.append("\"").append(sanitizeString((String) object)).append("\"");
        } else if (object instanceof byte[]) {
            appendQuotedBytes((byte[]) object, buf);
        } else {
            buf.append(object);
        }
        buf.append("\n");
    }

    private static String deCamelCaseify(String identifier) {
        StringBuffer out = new StringBuffer();
        for (int i = 0; i < identifier.length(); i++) {
            char currentChar = identifier.charAt(i);
            if (i == 0) {
                out.append(Character.toLowerCase(currentChar));
            } else if (Character.isUpperCase(currentChar)) {
                out.append('_').append(Character.toLowerCase(currentChar));
            } else {
                out.append(currentChar);
            }
        }
        return out.toString();
    }

    private static String sanitizeString(String str) {
        if (!str.startsWith("http") && str.length() > 200) {
            str = String.valueOf(str.substring(0, 200)).concat("[...]");
        }
        return escapeString(str);
    }

    private static String escapeString(String str) {
        int strLen = str.length();
        StringBuilder b = new StringBuilder(strLen);
        for (int i = 0; i < strLen; i++) {
            char original = str.charAt(i);
            if (original >= ' ' && original <= '~' && original != '\"' && original != '\'') {
                b.append(original);
            } else {
                b.append(String.format("\\u%04x", new Object[]{Integer.valueOf(original)}));
            }
        }
        return b.toString();
    }

    private static void appendQuotedBytes(byte[] bytes, StringBuffer builder) {
        if (bytes != null) {
            builder.append('\"');
            for (byte b : bytes) {
                int ch = b & 255;
                if (ch == 92 || ch == 34) {
                    builder.append('\\').append((char) ch);
                } else if (ch >= 32 && ch < 127) {
                    builder.append((char) ch);
                } else {
                    builder.append(String.format("\\%03o", new Object[]{Integer.valueOf(ch)}));
                }
            }
            builder.append('\"');
            return;
        }
        builder.append("\"\"");
    }
}
