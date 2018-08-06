.class public final Lcom/google/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

.field private autofocusIntervalInMs:J

.field private final configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private displayOrientation:I

.field private initialized:Z

.field private openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

.field private previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->displayOrientation:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    .line 54
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autofocusIntervalInMs:J

    .line 57
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    .line 59
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 9
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 233
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p2

    move v7, p3

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceAutoFocus()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V

    .line 88
    :cond_0
    return-void
.end method

.method public getPreviewCameraId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    return v0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;II)V
    .locals 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    .line 103
    .local v5, "theCamera":Lcom/google/zxing/client/android/camera/open/OpenCamera;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v6

    if-nez v6, :cond_2

    .line 104
    iget v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    invoke-static {v6}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open(I)Lcom/google/zxing/client/android/camera/open/OpenCamera;

    move-result-object v5

    .line 105
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    if-nez v6, :cond_1

    .line 106
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Camera.open() failed to return object from driver"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v5    # "theCamera":Lcom/google/zxing/client/android/camera/open/OpenCamera;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 108
    .restart local v5    # "theCamera":Lcom/google/zxing/client/android/camera/open/OpenCamera;
    :cond_1
    :try_start_1
    iput-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    .line 110
    :cond_2
    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 111
    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 112
    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    iget v7, p0, Lcom/google/zxing/client/android/camera/CameraManager;->displayOrientation:I

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 114
    iget-boolean v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    if-nez v6, :cond_3

    .line 115
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 116
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v6, v5, p2, p3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;II)V

    .line 119
    :cond_3
    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 120
    .local v0, "cameraObject":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 121
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_5

    const/4 v2, 0x0

    .line 124
    .local v2, "parametersFlattened":Ljava/lang/String;
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 122
    .end local v2    # "parametersFlattened":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 125
    .restart local v2    # "parametersFlattened":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 127
    .local v3, "re":Ljava/lang/RuntimeException;
    sget-object v6, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v7, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v6, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resetting to saved camera params: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    :try_start_5
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 135
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 136
    :catch_1
    move-exception v4

    .line 138
    .local v4, "re2":Ljava/lang/RuntimeException;
    :try_start_6
    sget-object v6, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v7, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public setAutofocusInterval(J)V
    .locals 1
    .param p1, "autofocusIntervalInMs"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autofocusIntervalInMs:J

    .line 79
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->setAutofocusInterval(J)V

    .line 82
    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->displayOrientation:I

    .line 72
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 64
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 67
    :cond_0
    return-void
.end method

.method public declared-synchronized setPreviewCameraId(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTorchEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    .line 164
    .local v0, "theCamera":Lcom/google/zxing/client/android/camera/open/OpenCamera;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v2

    if-eq p1, v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 166
    .local v1, "wasAutoFocusManager":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setTorchEnabled(Landroid/hardware/Camera;Z)V

    .line 171
    if-eqz v1, :cond_1

    .line 172
    new-instance v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;)V

    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 173
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v1    # "wasAutoFocusManager":Z
    :cond_1
    monitor-exit p0

    return-void

    .line 165
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    .end local v0    # "theCamera":Lcom/google/zxing/client/android/camera/open/OpenCamera;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startPreview()V
    .locals 4

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    .line 201
    .local v0, "theCamera":Lcom/google/zxing/client/android/camera/open/OpenCamera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 204
    new-instance v1, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 205
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    iget-wide v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autofocusIntervalInMs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->setAutofocusInterval(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    .end local v0    # "theCamera":Lcom/google/zxing/client/android/camera/open/OpenCamera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->openCamera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_1
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
