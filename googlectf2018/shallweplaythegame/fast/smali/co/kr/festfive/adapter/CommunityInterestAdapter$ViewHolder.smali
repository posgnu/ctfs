.class Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CommunityInterestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/CommunityInterestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field descriptionText:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field summaryText:Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/adapter/CommunityInterestAdapter;

.field titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lco/kr/festfive/adapter/CommunityInterestAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/CommunityInterestAdapter;

    .prologue
    .line 83
    iput-object p1, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/CommunityInterestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method
