.class public Lco/kr/festfive/utils/KeyboardUtil;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 25
    :goto_0
    return-void

    .line 20
    :cond_0
    const-string v1, "input_method"

    .line 21
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 24
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static setupUI(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    if-nez p0, :cond_1

    .line 46
    :cond_0
    return-void

    .line 30
    :cond_1
    instance-of v2, p1, Landroid/widget/EditText;

    if-nez v2, :cond_2

    .line 31
    new-instance v2, Lco/kr/festfive/utils/KeyboardUtil$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/utils/KeyboardUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    :cond_2
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    move-object v2, p1

    .line 42
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "innerView":Landroid/view/View;
    invoke-static {p0, v1}, Lco/kr/festfive/utils/KeyboardUtil;->setupUI(Landroid/app/Activity;Landroid/view/View;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
