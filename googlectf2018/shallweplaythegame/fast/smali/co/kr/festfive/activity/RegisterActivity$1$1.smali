.class Lco/kr/festfive/activity/RegisterActivity$1$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/RegisterActivity$1;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/RegisterActivity$1;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/RegisterActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/RegisterActivity$1;

    .prologue
    .line 248
    iput-object p1, p0, Lco/kr/festfive/activity/RegisterActivity$1$1;->this$1:Lco/kr/festfive/activity/RegisterActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity$1$1;->this$1:Lco/kr/festfive/activity/RegisterActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    new-instance v1, Lco/kr/festfive/adapter/SpinnerAdapter;

    iget-object v2, p0, Lco/kr/festfive/activity/RegisterActivity$1$1;->this$1:Lco/kr/festfive/activity/RegisterActivity$1;

    iget-object v2, v2, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    const v3, 0x1090008

    iget-object v4, p0, Lco/kr/festfive/activity/RegisterActivity$1$1;->this$1:Lco/kr/festfive/activity/RegisterActivity$1;

    iget-object v4, v4, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/RegisterActivity;->access$300(Lco/kr/festfive/activity/RegisterActivity;)[[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p3

    invoke-direct {v1, v2, v3, v4}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, v0, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    .line 252
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity$1$1;->this$1:Lco/kr/festfive/activity/RegisterActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    iget-object v0, v0, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 253
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity$1$1;->this$1:Lco/kr/festfive/activity/RegisterActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/RegisterActivity;->access$500(Lco/kr/festfive/activity/RegisterActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/RegisterActivity$1$1;->this$1:Lco/kr/festfive/activity/RegisterActivity$1;

    iget-object v1, v1, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    iget-object v1, v1, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 254
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
