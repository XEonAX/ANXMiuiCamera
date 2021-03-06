.class Landroid/support/v7/util/TileList;
.super Ljava/lang/Object;
.source "TileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/TileList$Tile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field private final mTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "tileSize"    # I

    .prologue
    .line 35
    .local p0, "this":Landroid/support/v7/util/TileList;, "Landroid/support/v7/util/TileList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    .line 36
    iput p1, p0, Landroid/support/v7/util/TileList;->mTileSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public addOrReplace(Landroid/support/v7/util/TileList$Tile;)Landroid/support/v7/util/TileList$Tile;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Landroid/support/v7/util/TileList;, "Landroid/support/v7/util/TileList<TT;>;"
    .local p1, "newTile":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    iget v3, p1, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 65
    .local v0, "index":I
    if-ltz v0, :cond_1c

    .line 69
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/util/TileList$Tile;

    .line 70
    .local v1, "oldTile":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 71
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    if-eq v2, v1, :cond_25

    .line 74
    :goto_1b
    return-object v1

    .line 66
    .end local v1    # "oldTile":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    :cond_1c
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    iget v3, p1, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    const/4 v2, 0x0

    return-object v2

    .line 72
    .restart local v1    # "oldTile":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    :cond_25
    iput-object p1, p0, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    goto :goto_1b
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 56
    .local p0, "this":Landroid/support/v7/util/TileList;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v0, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57
    return-void
.end method

.method public getAtIndex(I)Landroid/support/v7/util/TileList$Tile;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Landroid/support/v7/util/TileList;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v0, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/util/TileList$Tile;

    return-object v0
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .registers 6
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/TileList;, "Landroid/support/v7/util/TileList<TT;>;"
    const/4 v3, 0x0

    .line 40
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    if-nez v2, :cond_24

    .line 41
    :cond_5
    iget v2, p0, Landroid/support/v7/util/TileList;->mTileSize:I

    rem-int v2, p1, v2

    sub-int v1, p1, v2

    .line 42
    .local v1, "startPosition":I
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 43
    .local v0, "index":I
    if-ltz v0, :cond_2d

    .line 46
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/TileList$Tile;

    iput-object v2, p0, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    .line 48
    .end local v0    # "index":I
    .end local v1    # "startPosition":I
    :goto_1d
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    invoke-virtual {v2, p1}, Landroid/support/v7/util/TileList$Tile;->getByPosition(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 40
    :cond_24
    iget-object v2, p0, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    invoke-virtual {v2, p1}, Landroid/support/v7/util/TileList$Tile;->containsPosition(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1d

    .line 44
    .restart local v0    # "index":I
    .restart local v1    # "startPosition":I
    :cond_2d
    return-object v3
.end method

.method public removeAtPos(I)Landroid/support/v7/util/TileList$Tile;
    .registers 4
    .param p1, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Landroid/support/v7/util/TileList;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v1, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/util/TileList$Tile;

    .line 79
    .local v0, "tile":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v1, p0, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    if-eq v1, v0, :cond_12

    .line 82
    :goto_c
    iget-object v1, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 83
    return-object v0

    .line 80
    :cond_12
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    goto :goto_c
.end method

.method public size()I
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Landroid/support/v7/util/TileList;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v0, p0, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
