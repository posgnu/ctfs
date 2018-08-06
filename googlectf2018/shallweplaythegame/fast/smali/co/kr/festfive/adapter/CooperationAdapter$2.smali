.class Lco/kr/festfive/adapter/CooperationAdapter$2;
.super Ljava/lang/Object;
.source "CooperationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/CooperationAdapter;->getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/CooperationAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/CooperationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/CooperationAdapter;

    .prologue
    .line 197
    iput-object p1, p0, Lco/kr/festfive/adapter/CooperationAdapter$2;->this$0:Lco/kr/festfive/adapter/CooperationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 200
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lco/kr/festfive/adapter/CooperationAdapter$2;->this$0:Lco/kr/festfive/adapter/CooperationAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/CooperationAdapter;->access$100(Lco/kr/festfive/adapter/CooperationAdapter;)Lco/kr/festfive/listener/CooperateItemListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lco/kr/festfive/listener/CooperateItemListener;->mail(Ljava/lang/String;)V

    .line 202
    return-void
.end method
