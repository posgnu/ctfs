.class final Lco/kr/festfive/utils/KeyboardUtil$1;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/utils/KeyboardUtil;->setupUI(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lco/kr/festfive/utils/KeyboardUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    iget-object v0, p0, Lco/kr/festfive/utils/KeyboardUtil$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lco/kr/festfive/utils/KeyboardUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 34
    const/4 v0, 0x0

    return v0
.end method
