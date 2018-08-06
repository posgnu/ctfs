.class Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CooperationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/CooperationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public contentImage:Landroid/widget/ImageView;

.field public contentText:Landroid/widget/TextView;

.field public createDate:Landroid/widget/TextView;

.field public emailText:Landroid/widget/TextView;

.field public endGroup:Landroid/widget/LinearLayout;

.field public homeText:Landroid/widget/TextView;

.field public phoneText:Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/adapter/CooperationAdapter;

.field public titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/CooperationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/CooperationAdapter;

    .prologue
    .line 230
    iput-object p1, p0, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/CooperationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
