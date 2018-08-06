.class Lco/kr/festfive/activity/ModifyNewsFeedActivity$2;
.super Ljava/lang/Object;
.source "ModifyNewsFeedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/ModifyNewsFeedActivity;->DialogSelectOption([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$2;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$2;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$2;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$200(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$102(Lco/kr/festfive/activity/ModifyNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$2;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$400(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$2;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$300(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 301
    return-void
.end method
