.class Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "CustomHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/CustomHorizontalScrollView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/CustomHorizontalScrollView;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/CustomHorizontalScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    .prologue
    .line 27
    iput-object p1, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;->this$0:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;->this$0:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    iget-object v1, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;->this$0:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    invoke-virtual {v1}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->access$002(Lco/kr/festfive/adapter/CustomHorizontalScrollView;I)I

    .line 31
    iget-object v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;->this$0:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    invoke-static {v0}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->access$100(Lco/kr/festfive/adapter/CustomHorizontalScrollView;)I

    move-result v0

    iget-object v1, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;->this$0:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    invoke-static {v1}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->access$000(Lco/kr/festfive/adapter/CustomHorizontalScrollView;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;->this$0:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    iget-object v1, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;->this$0:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    invoke-static {v1}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->access$200(Lco/kr/festfive/adapter/CustomHorizontalScrollView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    :cond_0
    return-void
.end method
