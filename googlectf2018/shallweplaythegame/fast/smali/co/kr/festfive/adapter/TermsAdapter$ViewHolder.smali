.class Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TermsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/TermsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public contentText:Landroid/widget/TextView;

.field public dateText:Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/adapter/TermsAdapter;

.field public titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/TermsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/TermsAdapter;

    .prologue
    .line 158
    iput-object p1, p0, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/TermsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
