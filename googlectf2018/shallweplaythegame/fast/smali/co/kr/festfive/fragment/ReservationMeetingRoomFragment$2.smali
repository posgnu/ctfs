.class Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;
.super Ljava/lang/Object;
.source "ReservationMeetingRoomFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getSelectOfficeToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 10
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 148
    .local v2, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 151
    .local v0, "data":Lcom/google/gson/JsonArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 152
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 153
    .local v3, "object":Lcom/google/gson/JsonObject;
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->access$000(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

    move-result-object v4

    new-instance v5, Lco/kr/festfive/model/ReservationMeetingRoomListItem;

    const-string v6, "office_id"

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "office_name"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "office_address"

    invoke-virtual {v3, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "office_image_url"

    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lco/kr/festfive/model/ReservationMeetingRoomListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;->add(Ljava/lang/Object;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->access$200(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->access$000(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    .end local v0    # "data":Lcom/google/gson/JsonArray;
    .end local v1    # "i":I
    .end local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    :goto_1
    return-void

    .line 159
    .restart local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_3
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
