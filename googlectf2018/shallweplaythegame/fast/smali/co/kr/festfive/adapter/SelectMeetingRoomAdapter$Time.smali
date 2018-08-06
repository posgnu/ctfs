.class Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;
.super Ljava/lang/Object;
.source "SelectMeetingRoomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Time"
.end annotation


# instance fields
.field private endTime:Ljava/lang/String;

.field private isReservation:Z

.field private row:I

.field private startTime:Ljava/lang/String;

.field final synthetic this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;I)V
    .locals 1
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;
    .param p2, "index"    # I

    .prologue
    .line 771
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->row:I

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->isReservation:Z

    .line 772
    invoke-virtual {p0, p2}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->setTime(I)V

    .line 773
    return-void
.end method

.method constructor <init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;
    .param p2, "_startTime"    # Ljava/lang/String;
    .param p3, "_endTime"    # Ljava/lang/String;

    .prologue
    .line 758
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->row:I

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->isReservation:Z

    .line 759
    iput-object p2, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 760
    iput-object p3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    .line 761
    return-void
.end method

.method constructor <init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;
    .param p2, "_startTime"    # Ljava/lang/String;
    .param p3, "_endTime"    # Ljava/lang/String;
    .param p4, "_row"    # I

    .prologue
    .line 763
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->row:I

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->isReservation:Z

    .line 764
    iput-object p2, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 765
    iput-object p3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    .line 766
    iput p4, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->row:I

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->isReservation:Z

    .line 769
    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;)Z
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;

    .prologue
    .line 752
    iget-boolean v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->isReservation:Z

    return v0
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->row:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public isReservation()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->isReservation:Z

    return v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 933
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    .line 934
    return-void
.end method

.method public setReservation(Z)V
    .locals 0
    .param p1, "reservation"    # Z

    .prologue
    .line 949
    iput-boolean p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->isReservation:Z

    .line 950
    return-void
.end method

.method public setRow(I)V
    .locals 0
    .param p1, "row"    # I

    .prologue
    .line 941
    iput p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->row:I

    .line 942
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 925
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 926
    return-void
.end method

.method public setTime(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 776
    packed-switch p1, :pswitch_data_0

    .line 912
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 913
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    .line 918
    :goto_0
    return-void

    .line 779
    :pswitch_0
    const-string v0, "08:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 780
    const-string v0, "08:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 783
    :pswitch_1
    const-string v0, "08:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 784
    const-string v0, "09:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 787
    :pswitch_2
    const-string v0, "09:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 788
    const-string v0, "09:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 791
    :pswitch_3
    const-string v0, "09:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 792
    const-string v0, "10:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 795
    :pswitch_4
    const-string v0, "10:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 796
    const-string v0, "10:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 799
    :pswitch_5
    const-string v0, "10:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 800
    const-string v0, "11:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 803
    :pswitch_6
    const-string v0, "11:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 804
    const-string v0, "11:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 807
    :pswitch_7
    const-string v0, "11:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 808
    const-string v0, "12:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 811
    :pswitch_8
    const-string v0, "12:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 812
    const-string v0, "12:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 815
    :pswitch_9
    const-string v0, "12:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 816
    const-string v0, "13:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 819
    :pswitch_a
    const-string v0, "13:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 820
    const-string v0, "13:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 823
    :pswitch_b
    const-string v0, "13:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 824
    const-string v0, "14:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 827
    :pswitch_c
    const-string v0, "14:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 828
    const-string v0, "14:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 831
    :pswitch_d
    const-string v0, "14:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 832
    const-string v0, "15:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto :goto_0

    .line 835
    :pswitch_e
    const-string v0, "15:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 836
    const-string v0, "15:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 839
    :pswitch_f
    const-string v0, "15:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 840
    const-string v0, "16:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 843
    :pswitch_10
    const-string v0, "16:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 844
    const-string v0, "16:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 847
    :pswitch_11
    const-string v0, "16:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 848
    const-string v0, "17:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 851
    :pswitch_12
    const-string v0, "17:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 852
    const-string v0, "17:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 855
    :pswitch_13
    const-string v0, "17:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 856
    const-string v0, "18:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 859
    :pswitch_14
    const-string v0, "18:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 860
    const-string v0, "18:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 863
    :pswitch_15
    const-string v0, "18:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 864
    const-string v0, "19:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 867
    :pswitch_16
    const-string v0, "19:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 868
    const-string v0, "19:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 871
    :pswitch_17
    const-string v0, "19:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 872
    const-string v0, "20:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 875
    :pswitch_18
    const-string v0, "20:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 876
    const-string v0, "20:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 879
    :pswitch_19
    const-string v0, "20:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 880
    const-string v0, "21:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 883
    :pswitch_1a
    const-string v0, "21:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 884
    const-string v0, "21:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 887
    :pswitch_1b
    const-string v0, "21:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 888
    const-string v0, "22:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 891
    :pswitch_1c
    const-string v0, "22:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 892
    const-string v0, "22:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 895
    :pswitch_1d
    const-string v0, "22:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 896
    const-string v0, "23:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 899
    :pswitch_1e
    const-string v0, "23:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 900
    const-string v0, "23:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 903
    :pswitch_1f
    const-string v0, "23:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 904
    const-string v0, "24:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 907
    :pswitch_20
    const-string v0, "24:00"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->startTime:Ljava/lang/String;

    .line 908
    const-string v0, "24:30"

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$Time;->endTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 776
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method
