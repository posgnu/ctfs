.class Lco/kr/festfive/activity/WriteNewsFeedActivity$1;
.super Ljava/lang/Object;
.source "WriteNewsFeedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/WriteNewsFeedActivity;->DialogSelectOption([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$1;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$1;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$1;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->access$100(Lco/kr/festfive/activity/WriteNewsFeedActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->access$002(Lco/kr/festfive/activity/WriteNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$1;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->access$300(Lco/kr/festfive/activity/WriteNewsFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$1;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->access$200(Lco/kr/festfive/activity/WriteNewsFeedActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 178
    return-void
.end method
