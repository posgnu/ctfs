.class public final Lcom/google/zxing/client/android/camera/open/OpenCamera;
.super Ljava/lang/Object;
.source "OpenCamera.java"


# instance fields
.field private final camera:Landroid/hardware/Camera;

.field private final facing:Lcom/google/zxing/client/android/camera/open/CameraFacing;

.field private final index:I

.field private final orientation:I


# direct methods
.method public constructor <init>(ILandroid/hardware/Camera;Lcom/google/zxing/client/android/camera/open/CameraFacing;I)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "facing"    # Lcom/google/zxing/client/android/camera/open/CameraFacing;
    .param p4, "orientation"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->index:I

    .line 29
    iput-object p2, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->camera:Landroid/hardware/Camera;

    .line 30
    iput-object p3, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->facing:Lcom/google/zxing/client/android/camera/open/CameraFacing;

    .line 31
    iput p4, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->orientation:I

    .line 32
    return-void
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getFacing()Lcom/google/zxing/client/android/camera/open/CameraFacing;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->facing:Lcom/google/zxing/client/android/camera/open/CameraFacing;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->orientation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->facing:Lcom/google/zxing/client/android/camera/open/CameraFacing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
