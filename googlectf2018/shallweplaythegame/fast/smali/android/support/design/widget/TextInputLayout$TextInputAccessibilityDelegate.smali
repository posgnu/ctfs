.class Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/widget/TextInputLayout;
    .param p2, "x1"    # Landroid/support/design/widget/TextInputLayout$1;

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1336
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1337
    const-class v0, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1338
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 1352
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1353
    const-class v2, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v2}, Landroid/support/design/widget/TextInputLayout;->access$600(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1356
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1357
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v2}, Landroid/support/design/widget/TextInputLayout;->access$700(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1360
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v2}, Landroid/support/design/widget/TextInputLayout;->access$700(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLabelFor(Landroid/view/View;)V

    .line 1362
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v2}, Landroid/support/design/widget/TextInputLayout;->access$400(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v2}, Landroid/support/design/widget/TextInputLayout;->access$400(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1363
    .local v0, "error":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1364
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 1365
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 1367
    :cond_2
    return-void

    .line 1362
    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1342
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1344
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v1}, Landroid/support/design/widget/TextInputLayout;->access$600(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1345
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1346
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    :cond_0
    return-void
.end method