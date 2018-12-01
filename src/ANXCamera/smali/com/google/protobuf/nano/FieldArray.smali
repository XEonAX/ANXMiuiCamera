.class public final Lcom/google/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Lcom/google/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/google/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 56
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    .line 65
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 66
    new-array v0, p1, [Lcom/google/protobuf/nano/FieldData;

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 67
    iput v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 68
    return-void
.end method

.method private arrayEquals([I[II)Z
    .locals 3
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "size"    # I

    .prologue
    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 280
    const/4 v1, 0x1

    return v1

    .line 276
    :cond_0
    aget v1, p1, v0

    aget v2, p2, v0

    if-ne v1, v2, :cond_1

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z
    .locals 4
    .param p1, "a"    # [Lcom/google/protobuf/nano/FieldData;
    .param p2, "b"    # [Lcom/google/protobuf/nano/FieldData;
    .param p3, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 289
    const/4 v1, 0x1

    return v1

    .line 285
    :cond_0
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_1
    return v3
.end method

.method private binarySearch(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "lo":I
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v4, -0x1

    .line 259
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 271
    xor-int/lit8 v4, v1, -0x1

    return v4

    .line 260
    :cond_0
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 261
    .local v2, "mid":I
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v4, v2

    .line 263
    .local v3, "midVal":I
    if-lt v3, p1, :cond_1

    .line 265
    if-gt v3, p1, :cond_2

    .line 268
    return v2

    .line 264
    :cond_1
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 266
    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private gc()V
    .locals 7

    .prologue
    .line 112
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 113
    .local v2, "n":I
    const/4 v3, 0x0

    .line 114
    .local v3, "o":I
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 115
    .local v1, "keys":[I
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 117
    .local v5, "values":[Lcom/google/protobuf/nano/FieldData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 131
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 132
    iput v3, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 133
    return-void

    .line 118
    :cond_0
    aget-object v4, v5, v0

    .line 120
    .local v4, "val":Lcom/google/protobuf/nano/FieldData;
    sget-object v6, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v4, v6, :cond_1

    .line 117
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    if-ne v0, v3, :cond_2

    .line 127
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    :cond_2
    aget v6, v1, v0

    aput v6, v1, v3

    .line 123
    aput-object v4, v5, v3

    .line 124
    const/4 v6, 0x0

    aput-object v6, v5, v0

    goto :goto_2
.end method

.method private idealByteArraySize(I)I
    .locals 3
    .param p1, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 248
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 252
    return p1

    .line 249
    :cond_0
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-le p1, v1, :cond_1

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    return v1
.end method

.method private idealIntArraySize(I)I
    .locals 1
    .param p1, "need"    # I

    .prologue
    .line 244
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final clone()Lcom/google/protobuf/nano/FieldArray;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v2

    .line 296
    .local v2, "size":I
    new-instance v0, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v0, v2}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 297
    .local v0, "clone":Lcom/google/protobuf/nano/FieldArray;
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 303
    iput v2, v0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 304
    return-object v0

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 298
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_1
    iget-object v3, v0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object v0

    return-object v0
.end method

.method dataAt(I)Lcom/google/protobuf/nano/FieldData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-nez v0, :cond_0

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v0, v0, p1

    return-object v0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    if-eq p1, p0, :cond_1

    .line 218
    instance-of v3, p1, Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/google/protobuf/nano/FieldArray;

    .line 223
    .local v0, "other":Lcom/google/protobuf/nano/FieldArray;
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 226
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v3, v4, v5}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    move v1, v2

    :cond_0
    return v1

    .line 216
    .end local v0    # "other":Lcom/google/protobuf/nano/FieldArray;
    :cond_1
    return v1

    .line 219
    :cond_2
    return v2

    .line 224
    .restart local v0    # "other":Lcom/google/protobuf/nano/FieldArray;
    :cond_3
    return v2

    .line 226
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, v0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 227
    invoke-direct {p0, v3, v4, v5}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method get(I)Lcom/google/protobuf/nano/FieldData;
    .locals 3
    .param p1, "fieldNumber"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 77
    .local v0, "i":I
    if-gez v0, :cond_1

    .line 78
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 232
    iget-boolean v2, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-nez v2, :cond_0

    .line 235
    :goto_0
    const/16 v1, 0x11

    .line 236
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-lt v0, v2, :cond_1

    .line 240
    return v1

    .line 233
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    goto :goto_0

    .line 237
    .restart local v0    # "i":I
    .restart local v1    # "result":I
    :cond_1
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 238
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldData;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method put(ILcom/google/protobuf/nano/FieldData;)V
    .locals 8
    .param p1, "fieldNumber"    # I
    .param p2, "data"    # Lcom/google/protobuf/nano/FieldData;

    .prologue
    const/4 v6, 0x0

    .line 140
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 142
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 145
    xor-int/lit8 v0, v0, -0x1

    .line 147
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-lt v0, v4, :cond_3

    .line 153
    :cond_0
    iget-boolean v4, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-nez v4, :cond_4

    .line 160
    :cond_1
    :goto_0
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 173
    :goto_1
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    if-nez v4, :cond_6

    .line 178
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    .line 179
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 180
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 182
    :goto_3
    return-void

    .line 143
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    goto :goto_3

    .line 147
    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v4, v4, v0

    sget-object v5, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v4, v5, :cond_0

    .line 148
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    .line 149
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 150
    return-void

    .line 153
    :cond_4
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 157
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    goto :goto_0

    .line 161
    :cond_5
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    .line 163
    .local v1, "n":I
    new-array v2, v1, [I

    .line 164
    .local v2, "nkeys":[I
    new-array v3, v1, [Lcom/google/protobuf/nano/FieldData;

    .line 166
    .local v3, "nvalues":[Lcom/google/protobuf/nano/FieldData;
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 170
    iput-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    goto :goto_1

    .line 174
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Lcom/google/protobuf/nano/FieldData;
    :cond_6
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method remove(I)V
    .locals 3
    .param p1, "fieldNumber"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 105
    .local v0, "i":I
    if-gez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    aput-object v2, v1, v0

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return v0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    goto :goto_0
.end method
