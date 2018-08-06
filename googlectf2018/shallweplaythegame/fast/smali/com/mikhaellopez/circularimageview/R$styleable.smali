.class public final Lcom/mikhaellopez/circularimageview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikhaellopez/circularimageview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircularImageView:[I

.field public static final CircularImageView_civ_border:I = 0x0

.field public static final CircularImageView_civ_border_color:I = 0x1

.field public static final CircularImageView_civ_border_width:I = 0x2

.field public static final CircularImageView_civ_shadow:I = 0x3

.field public static final CircularImageView_civ_shadow_color:I = 0x4

.field public static final CircularImageView_civ_shadow_radius:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030050
        0x7f030051
        0x7f030052
        0x7f030053
        0x7f030054
        0x7f030055
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
