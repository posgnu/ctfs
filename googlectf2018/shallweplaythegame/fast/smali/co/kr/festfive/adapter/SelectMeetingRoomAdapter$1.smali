.class Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$1;
.super Ljava/lang/Object;
.source "SelectMeetingRoomAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->smoothAllViewScroll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

.field final synthetic val$sv:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

.field final synthetic val$x:I


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;Lco/kr/festfive/adapter/CustomHorizontalScrollView;I)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    .prologue
    .line 111
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$1;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    iput-object p2, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$1;->val$sv:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    iput p3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$1;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$1;->val$sv:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    iget v1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$1;->val$x:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->smoothScrollTo(II)V

    .line 115
    return-void
.end method
