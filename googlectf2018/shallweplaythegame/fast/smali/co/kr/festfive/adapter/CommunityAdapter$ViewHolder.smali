.class Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CommunityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/CommunityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field descriptionText:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field summaryText:Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/adapter/CommunityAdapter;

.field titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lco/kr/festfive/adapter/CommunityAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/CommunityAdapter;

    .prologue
    .line 94
    iput-object p1, p0, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/CommunityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method
