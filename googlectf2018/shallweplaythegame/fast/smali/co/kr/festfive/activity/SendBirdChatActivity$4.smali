.class Lco/kr/festfive/activity/SendBirdChatActivity$4;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity;->initUIComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChatActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChatActivity;

    .prologue
    .line 404
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$4;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$4;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->finish()V

    .line 408
    return-void
.end method
