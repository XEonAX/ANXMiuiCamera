.class final Lcom/google/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    .line 53
    iput-object p2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 54
    return-void
.end method


# virtual methods
.method computeSerializedSize()I
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 59
    iget-object v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-eq p1, p0, :cond_1

    .line 81
    instance-of v3, p1, Lcom/google/protobuf/nano/UnknownFieldData;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 86
    .local v0, "other":Lcom/google/protobuf/nano/UnknownFieldData;
    iget v3, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    if-eq v3, v4, :cond_3

    :goto_0
    move v1, v2

    :cond_0
    return v1

    .line 79
    .end local v0    # "other":Lcom/google/protobuf/nano/UnknownFieldData;
    :cond_1
    return v1

    .line 82
    :cond_2
    return v2

    .line 86
    .restart local v0    # "other":Lcom/google/protobuf/nano/UnknownFieldData;
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 91
    const/16 v0, 0x11

    .line 92
    .local v0, "result":I
    iget v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v0, v1, 0x20f

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 94
    return v0
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 65
    iget-object v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 66
    return-void
.end method
