.class Lco/kr/festfive/adapter/NewFeedAdapter$17;
.super Ljava/lang/Object;
.source "NewFeedAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/NewFeedAdapter;->makeTextViewResizable(Landroid/widget/TextView;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

.field final synthetic val$expandText:Ljava/lang/String;

.field final synthetic val$maxLine:I

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/NewFeedAdapter;Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 813
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iput-object p2, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    iput p3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$maxLine:I

    iput-object p4, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$expandText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 819
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 820
    .local v1, "obs":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 821
    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$maxLine:I

    if-gtz v3, :cond_1

    .line 822
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 823
    .local v0, "lineEndIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$expandText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v0, v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<font color=#a7a9ab>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$expandText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    const-string v4, "\n"

    const-string v5, "<br />"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    .end local v0    # "lineEndIndex":I
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    iget v4, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$maxLine:I

    if-lt v3, v4, :cond_0

    .line 826
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget v4, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$maxLine:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 827
    .restart local v0    # "lineEndIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$expandText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v0, v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<font color=#a7a9ab>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$expandText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 828
    .restart local v2    # "text":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$17;->val$tv:Landroid/widget/TextView;

    const-string v4, "\n"

    const-string v5, "<br />"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
