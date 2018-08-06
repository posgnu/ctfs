.class public Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
.super Landroid/view/SurfaceView;
.source "QRCodeReaderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;,
        Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mQRCodeReader:Lcom/google/zxing/qrcode/QRCodeReader;

.field private mQrDecodingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    .line 82
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->checkCameraHardware()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 88
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/google/zxing/client/android/camera/CameraManager;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 89
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 90
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setBackCamera()V

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: Camera not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .prologue
    .line 55
    iget v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .prologue
    .line 55
    iget v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;
    .locals 1
    .param p0, "x0"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQRCodeReader:Lcom/google/zxing/qrcode/QRCodeReader;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;
    .locals 1
    .param p0, "x0"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getCameraDisplayOrientation()I

    move-result v0

    return v0
.end method

.method private checkCameraHardware()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.camera.front"

    .line 278
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private getCameraDisplayOrientation()I
    .locals 7

    .prologue
    .line 291
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-ge v5, v6, :cond_0

    .line 292
    const/16 v2, 0x5a

    .line 325
    :goto_0
    return v2

    .line 295
    :cond_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 296
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v5, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewCameraId()I

    move-result v5

    invoke-static {v5, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 298
    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 299
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 300
    .local v3, "rotation":I
    const/4 v0, 0x0

    .line 301
    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    .line 319
    :goto_1
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 320
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v0

    rem-int/lit16 v2, v5, 0x168

    .line 321
    .local v2, "result":I
    rsub-int v5, v2, 0x168

    rem-int/lit16 v2, v5, 0x168

    goto :goto_0

    .line 303
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    .line 304
    goto :goto_1

    .line 306
    :pswitch_1
    const/16 v0, 0x5a

    .line 307
    goto :goto_1

    .line 309
    :pswitch_2
    const/16 v0, 0xb4

    .line 310
    goto :goto_1

    .line 312
    :pswitch_3
    const/16 v0, 0x10e

    .line 313
    goto :goto_1

    .line 323
    :cond_1
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v2, v5, 0x168

    .restart local v2    # "result":I
    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public forceAutoFocus()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->forceAutoFocus()V

    .line 157
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 198
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->cancel(Z)Z

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    .line 202
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    .line 264
    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    new-instance v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    iget-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeHints:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;-><init>(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    .line 269
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setAutofocusInterval(J)V
    .locals 1
    .param p1, "autofocusIntervalInMs"    # J

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/client/android/camera/CameraManager;->setAutofocusInterval(J)V

    .line 148
    :cond_0
    return-void
.end method

.method public setBackCamera()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setPreviewCameraId(I)V

    .line 186
    return-void
.end method

.method public setDecodeHints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "decodeHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeHints:Ljava/util/Map;

    .line 122
    return-void
.end method

.method public setFrontCamera()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setPreviewCameraId(I)V

    .line 193
    return-void
.end method

.method public setOnQRCodeReadListener(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;)V
    .locals 0
    .param p1, "onQRCodeReadListener"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    .line 103
    return-void
.end method

.method public setPreviewCameraId(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->setPreviewCameraId(I)V

    .line 179
    return-void
.end method

.method public setQRDecodingEnabled(Z)V
    .locals 0
    .param p1, "qrDecodingEnabled"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    .line 113
    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorchEnabled(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public startCamera()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 129
    return-void
.end method

.method public stopCamera()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 136
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 229
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v1, "Error: preview surface does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_1

    .line 237
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v1, "Error: preview size does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewWidth:I

    .line 242
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewHeight:I

    .line 244
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 247
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/google/zxing/client/android/camera/CameraManager;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 248
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getCameraDisplayOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;->setDisplayOrientation(I)V

    .line 250
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 209
    sget-object v1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    :try_start_1
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    iput-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQRCodeReader:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 221
    iget-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :goto_1
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not openDriver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 254
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 257
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 258
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 259
    return-void
.end method
