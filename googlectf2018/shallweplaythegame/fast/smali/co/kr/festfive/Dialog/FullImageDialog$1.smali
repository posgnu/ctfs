.class Lco/kr/festfive/Dialog/FullImageDialog$1;
.super Ljava/lang/Object;
.source "FullImageDialog.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field oneTime:Z

.field final synthetic this$0:Lco/kr/festfive/Dialog/FullImageDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/Dialog/FullImageDialog;)V
    .locals 1
    .param p1, "this$0"    # Lco/kr/festfive/Dialog/FullImageDialog;

    .prologue
    .line 99
    iput-object p1, p0, Lco/kr/festfive/Dialog/FullImageDialog$1;->this$0:Lco/kr/festfive/Dialog/FullImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/kr/festfive/Dialog/FullImageDialog$1;->oneTime:Z

    return-void
.end method


# virtual methods
.method public onScaleChange(FFF)V
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    const/4 v2, -0x1

    .line 104
    iget-boolean v0, p0, Lco/kr/festfive/Dialog/FullImageDialog$1;->oneTime:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog$1;->this$0:Lco/kr/festfive/Dialog/FullImageDialog;

    invoke-static {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->access$000(Lco/kr/festfive/Dialog/FullImageDialog;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-boolean v0, p0, Lco/kr/festfive/Dialog/FullImageDialog$1;->oneTime:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lco/kr/festfive/Dialog/FullImageDialog$1;->oneTime:Z

    .line 108
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
