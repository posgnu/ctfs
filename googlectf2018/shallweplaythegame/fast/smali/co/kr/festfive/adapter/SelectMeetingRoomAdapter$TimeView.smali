.class Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;
.super Ljava/lang/Object;
.source "SelectMeetingRoomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeView"
.end annotation


# instance fields
.field private index:I

.field private isSelected:Z

.field private row:I

.field private textViewArray:[Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

.field private time:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;

.field private view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;[Landroid/widget/TextView;Landroid/view/View;IIZ)V
    .locals 1
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;
    .param p2, "_textViewArray"    # [Landroid/widget/TextView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "_row"    # I
    .param p5, "_index"    # I
    .param p6, "_isSelected"    # Z

    .prologue
    .line 631
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p2, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->textViewArray:[Landroid/widget/TextView;

    .line 633
    check-cast p3, Landroid/widget/TextView;

    .end local p3    # "view":Landroid/view/View;
    iput-object p3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->view:Landroid/widget/TextView;

    .line 634
    iput p4, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->row:I

    .line 635
    iput p5, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->index:I

    .line 636
    iput-boolean p6, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->isSelected:Z

    .line 637
    iget v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->index:I

    invoke-direct {p0, v0}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->setTime(I)V

    .line 638
    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;)Z
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;

    .prologue
    .line 623
    iget-boolean v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->isSelected:Z

    return v0
.end method

.method private setTime(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 689
    new-instance v0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;

    iget-object v1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {v0, v1, p1}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;-><init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;I)V

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->time:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;

    .line 690
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->index:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->row:I

    return v0
.end method

.method public getTextViewArray()[Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->textViewArray:[Landroid/widget/TextView;

    return-object v0
.end method

.method public getTime()Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->time:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;

    return-object v0
.end method

.method public getView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->view:Landroid/widget/TextView;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->isSelected:Z

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 677
    iput p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->index:I

    .line 678
    return-void
.end method

.method public setRow(I)V
    .locals 0
    .param p1, "row"    # I

    .prologue
    .line 685
    iput p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->row:I

    .line 686
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->isSelected:Z

    .line 670
    return-void
.end method

.method public setTextViewArray([Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewArray"    # [Landroid/widget/TextView;

    .prologue
    .line 645
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->textViewArray:[Landroid/widget/TextView;

    .line 646
    return-void
.end method

.method public setTime(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;)V
    .locals 0
    .param p1, "time"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;

    .prologue
    .line 665
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->time:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;

    .line 666
    return-void
.end method

.method public setView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 653
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$TimeView;->view:Landroid/widget/TextView;

    .line 654
    return-void
.end method
