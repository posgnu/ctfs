.class Lco/kr/festfive/activity/WriteNewsFeedActivity$2;
.super Ljava/lang/Object;
.source "WriteNewsFeedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 180
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$2;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 184
    return-void
.end method
