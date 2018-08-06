.class Lco/kr/festfive/activity/DetailCommunityActivity$2;
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
    .line 146
    iput-object p1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$2;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity$2;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$000(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    .line 149
    return-void
.end method
