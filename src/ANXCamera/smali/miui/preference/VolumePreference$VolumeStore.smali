.class public Lmiui/preference/VolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput v0, p0, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    .line 203
    iput v0, p0, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 201
    return-void
.end method
