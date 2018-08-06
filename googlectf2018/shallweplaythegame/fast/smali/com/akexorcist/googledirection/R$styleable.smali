.class public final Lcom/akexorcist/googledirection/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akexorcist/googledirection/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x0

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x7

.field public static final MapAttrs_uiCompass:I = 0x8

.field public static final MapAttrs_uiMapToolbar:I = 0x9

.field public static final MapAttrs_uiRotateGestures:I = 0xa

.field public static final MapAttrs_uiScrollGestures:I = 0xb

.field public static final MapAttrs_uiTiltGestures:I = 0xc

.field public static final MapAttrs_uiZoomControls:I = 0xd

.field public static final MapAttrs_uiZoomGestures:I = 0xe

.field public static final MapAttrs_useViewLifecycle:I = 0xf

.field public static final MapAttrs_zOrderOnTop:I = 0x10

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 152
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/akexorcist/googledirection/R$styleable;->LoadingImageView:[I

    .line 156
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/akexorcist/googledirection/R$styleable;->MapAttrs:[I

    .line 174
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/akexorcist/googledirection/R$styleable;->SignInButton:[I

    return-void

    .line 152
    nop

    :array_0
    .array-data 4
        0x7f03004f
        0x7f0300a6
        0x7f0300a7
    .end array-data

    .line 156
    :array_1
    .array-data 4
        0x7f030029
        0x7f030048
        0x7f030049
        0x7f03004a
        0x7f03004b
        0x7f03004c
        0x7f0300f7
        0x7f0300fa
        0x7f030188
        0x7f030189
        0x7f03018a
        0x7f03018b
        0x7f03018c
        0x7f03018d
        0x7f03018e
        0x7f030190
        0x7f03019f
    .end array-data

    .line 174
    :array_2
    .array-data 4
        0x7f030043
        0x7f030065
        0x7f030123
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
