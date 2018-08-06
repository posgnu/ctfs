.class Lco/kr/festfive/activity/SendBirdMessagingActivity$4;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity;->initUIComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;

    .prologue
    .line 568
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$4;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 571
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$4;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->finish()V

    .line 572
    return-void
.end method
