.class Lco/kr/festfive/activity/DetailCommunityActivity$1;
.super Ljava/lang/Object;
.source "DetailCommunityActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/DetailCommunityActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/DetailCommunityActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$1;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 154
    return-void
.end method
