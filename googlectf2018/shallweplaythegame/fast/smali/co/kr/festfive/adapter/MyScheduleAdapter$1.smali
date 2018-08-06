.class Lco/kr/festfive/adapter/MyScheduleAdapter$1;
.super Ljava/lang/Object;
.source "MyScheduleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/MyScheduleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/MyScheduleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/MyScheduleAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/MyScheduleAdapter;

    .prologue
    .line 201
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$1;->this$0:Lco/kr/festfive/adapter/MyScheduleAdapter;

    iput p2, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$1;->this$0:Lco/kr/festfive/adapter/MyScheduleAdapter;

    invoke-static {v0}, Lco/kr/festfive/adapter/MyScheduleAdapter;->access$800(Lco/kr/festfive/adapter/MyScheduleAdapter;)Lco/kr/festfive/adapter/MyScheduleAdapter$OnDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$1;->this$0:Lco/kr/festfive/adapter/MyScheduleAdapter;

    invoke-static {v0}, Lco/kr/festfive/adapter/MyScheduleAdapter;->access$800(Lco/kr/festfive/adapter/MyScheduleAdapter;)Lco/kr/festfive/adapter/MyScheduleAdapter$OnDeleteListener;

    move-result-object v1

    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$1;->this$0:Lco/kr/festfive/adapter/MyScheduleAdapter;

    iget v2, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-interface {v1, v0}, Lco/kr/festfive/adapter/MyScheduleAdapter$OnDeleteListener;->onDelete(Lco/kr/festfive/model/MyScheduleListItem;)V

    .line 207
    :cond_0
    return-void
.end method
