.class Lco/kr/festfive/activity/SendBirdChannelListActivity$2;
.super Ljava/lang/Object;
.source "SendBirdChannelListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity;->initUIComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChannelListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$2;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$2;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->finish()V

    .line 166
    return-void
.end method
