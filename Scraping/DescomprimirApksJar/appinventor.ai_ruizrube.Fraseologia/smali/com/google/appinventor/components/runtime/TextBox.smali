.class public final Lcom/google/appinventor/components/runtime/TextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "TextBox.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for the user to enter text.  The initial or user-entered text value is in the <code>Text</code> property.  If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p><p>The <code>MultiLine</code> property determines if the text can havemore than one line.  For a single line text box, the keyboard will closeautomatically when the user presses the Done key.  To close the keyboard for multiline text boxes, the app should use  the HideKeyboard method or  rely on the user to press the Back key.</p><p>The <code> NumbersOnly</code> property restricts the keyboard to acceptnumeric input only.</p><p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p><p>If the text entered by the user should not be displayed, use <code>PasswordTextBox</code> instead.</p>"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private acceptsNumbersOnly:Z

.field private multiLine:Z

.field private readOnly:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextBox;->NumbersOnly(Z)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextBox;->MultiLine(Z)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextBox;->ReadOnly(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard.  Only multiline text boxes need this. Single line text boxes close the keyboard when the users presses the Done key."
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 156
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 157
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 158
    return-void
.end method

.method public MultiLine(Z)V
    .locals 2
    .param p1, "multiLine"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->multiLine:Z

    .line 187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 188
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MultiLine()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts multiple lines of input, which are entered using the return key.  For single line text boxes there is a Done key instead of a return key, and pressing Done hides the keyboard.  The app should call the HideKeyboard method to hide the keyboard for a mutiline text box."
    .end annotation

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->multiLine:Z

    return v0
.end method

.method public NumbersOnly(Z)V
    .locals 2
    .param p1, "acceptsNumbersOnly"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then this text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 145
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->acceptsNumbersOnly:Z

    .line 146
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public NumbersOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->acceptsNumbersOnly:Z

    return v0
.end method

.method public ReadOnly(Z)V
    .locals 2
    .param p1, "readOnly"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->readOnly:Z

    .line 205
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 206
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReadOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the %type% is read-only. By default, this is true."
    .end annotation

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->readOnly:Z

    return v0
.end method
