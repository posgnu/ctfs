.class Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;
.super Lcom/sendbird/android/shadow/okhttp3/ResponseBody;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->readMessageFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

.field final synthetic val$source:Lcom/sendbird/android/shadow/okio/BufferedSource;

.field final synthetic val$type:Lcom/sendbird/android/shadow/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;Lcom/sendbird/android/shadow/okhttp3/MediaType;Lcom/sendbird/android/shadow/okio/BufferedSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;->val$type:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;->val$source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 233
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;->val$type:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lcom/sendbird/android/shadow/okio/BufferedSource;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;->val$source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    return-object v0
.end method
