.class Lco/kr/festfive/Dialog/FullImageDialog$2;
.super Ljava/lang/Object;
.source "FullImageDialog.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnSingleFlingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/Dialog/FullImageDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/Dialog/FullImageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/Dialog/FullImageDialog;

    .prologue
    .line 110
    iput-object p1, p0, Lco/kr/festfive/Dialog/FullImageDialog$2;->this$0:Lco/kr/festfive/Dialog/FullImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog$2;->this$0:Lco/kr/festfive/Dialog/FullImageDialog;

    invoke-virtual {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->dismiss()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
