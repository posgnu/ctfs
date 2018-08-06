.class Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NoticeExAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/NoticeExAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public contentImage:Landroid/widget/ImageView;

.field public contentText:Landroid/widget/TextView;

.field public noticeDate:Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/adapter/NoticeExAdapter;

.field public titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/NoticeExAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/NoticeExAdapter;

    .prologue
    .line 191
    iput-object p1, p0, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/NoticeExAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
