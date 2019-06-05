// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.view.c;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

// Referenced classes of package android.support.v7.widget:
//            ai, aq, f

public class SearchView extends ai
    implements android.support.v7.view.c
{
    public static class SearchAutoComplete extends android.support.v7.widget.f
    {

        final Runnable a;
        private int b;
        private SearchView c;
        private boolean d;

        private void a()
        {
            if (d)
            {
                ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this, 0);
                d = false;
            }
        }

        static void a(SearchAutoComplete searchautocomplete)
        {
            searchautocomplete.a();
        }

        static void a(SearchAutoComplete searchautocomplete, boolean flag)
        {
            searchautocomplete.setImeVisibility(flag);
        }

        private int getSearchViewTextMinWidthDp()
        {
            Configuration configuration = getResources().getConfiguration();
            int i1 = configuration.screenWidthDp;
            int j1 = configuration.screenHeightDp;
            if (i1 >= 960 && j1 >= 720 && configuration.orientation == 2)
            {
                return 256;
            }
            return i1 < 600 && (i1 < 640 || j1 < 480) ? 160 : 192;
        }

        private void setImeVisibility(boolean flag)
        {
            InputMethodManager inputmethodmanager = (InputMethodManager)getContext().getSystemService("input_method");
            if (!flag)
            {
                d = false;
                removeCallbacks(a);
                inputmethodmanager.hideSoftInputFromWindow(getWindowToken(), 0);
                return;
            }
            if (inputmethodmanager.isActive(this))
            {
                d = false;
                removeCallbacks(a);
                inputmethodmanager.showSoftInput(this, 0);
                return;
            } else
            {
                d = true;
                return;
            }
        }

        public boolean enoughToFilter()
        {
            return b <= 0 || super.enoughToFilter();
        }

        public InputConnection onCreateInputConnection(EditorInfo editorinfo)
        {
            editorinfo = super.onCreateInputConnection(editorinfo);
            if (d)
            {
                removeCallbacks(a);
                post(a);
            }
            return editorinfo;
        }

        protected void onFinishInflate()
        {
            super.onFinishInflate();
            android.util.DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
            setMinWidth((int)TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), displaymetrics));
        }

        protected void onFocusChanged(boolean flag, int i1, Rect rect)
        {
            super.onFocusChanged(flag, i1, rect);
            c.g();
        }

        public boolean onKeyPreIme(int i1, KeyEvent keyevent)
        {
            if (i1 == 4)
            {
                if (keyevent.getAction() == 0 && keyevent.getRepeatCount() == 0)
                {
                    android.view.KeyEvent.DispatcherState dispatcherstate = getKeyDispatcherState();
                    if (dispatcherstate != null)
                    {
                        dispatcherstate.startTracking(keyevent, this);
                    }
                    return true;
                }
                if (keyevent.getAction() == 1)
                {
                    android.view.KeyEvent.DispatcherState dispatcherstate1 = getKeyDispatcherState();
                    if (dispatcherstate1 != null)
                    {
                        dispatcherstate1.handleUpEvent(keyevent);
                    }
                    if (keyevent.isTracking() && !keyevent.isCanceled())
                    {
                        c.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i1, keyevent);
        }

        public void onWindowFocusChanged(boolean flag)
        {
            super.onWindowFocusChanged(flag);
            if (flag && c.hasFocus() && getVisibility() == 0)
            {
                d = true;
                if (SearchView.a(getContext()))
                {
                    SearchView.i.a(this, true);
                }
            }
        }

        public void performCompletion()
        {
        }

        protected void replaceText(CharSequence charsequence)
        {
        }

        void setSearchView(SearchView searchview)
        {
            c = searchview;
        }

        public void setThreshold(int i1)
        {
            super.setThreshold(i1);
            b = i1;
        }

        public SearchAutoComplete(Context context)
        {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeset)
        {
            this(context, attributeset, android.support.v7.a.a.a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeset, int i1)
        {
            super(context, attributeset, i1);
            a = new _cls1(this);
            b = getThreshold();
        }
    }

    private static class a
    {

        private Method a;
        private Method b;
        private Method c;

        void a(AutoCompleteTextView autocompletetextview)
        {
            if (a == null)
            {
                break MISSING_BLOCK_LABEL_20;
            }
            a.invoke(autocompletetextview, new Object[0]);
            return;
            autocompletetextview;
        }

        void a(AutoCompleteTextView autocompletetextview, boolean flag)
        {
            if (c == null)
            {
                break MISSING_BLOCK_LABEL_27;
            }
            c.invoke(autocompletetextview, new Object[] {
                Boolean.valueOf(flag)
            });
            return;
            autocompletetextview;
        }

        void b(AutoCompleteTextView autocompletetextview)
        {
            if (b == null)
            {
                break MISSING_BLOCK_LABEL_20;
            }
            b.invoke(autocompletetextview, new Object[0]);
            return;
            autocompletetextview;
        }

        a()
        {
            try
            {
                a = android/widget/AutoCompleteTextView.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                a.setAccessible(true);
            }
            catch (NoSuchMethodException nosuchmethodexception2) { }
            try
            {
                b = android/widget/AutoCompleteTextView.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                b.setAccessible(true);
            }
            catch (NoSuchMethodException nosuchmethodexception1) { }
            try
            {
                c = android/widget/AutoCompleteTextView.getMethod("ensureImeVisible", new Class[] {
                    Boolean.TYPE
                });
                c.setAccessible(true);
                return;
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                return;
            }
        }
    }

    public static interface b
    {

        public abstract boolean a();
    }

    public static interface c
    {

        public abstract boolean a(String s1);
    }

    public static interface d
    {
    }

    static class e extends android.support.v4.h.a
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.ClassLoaderCreator() {

            public e a(Parcel parcel)
            {
                return new e(parcel, null);
            }

            public e a(Parcel parcel, ClassLoader classloader)
            {
                return new e(parcel, classloader);
            }

            public e[] a(int i1)
            {
                return new e[i1];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object createFromParcel(Parcel parcel, ClassLoader classloader)
            {
                return a(parcel, classloader);
            }

            public Object[] newArray(int i1)
            {
                return a(i1);
            }

        };
        boolean b;

        public String toString()
        {
            return (new StringBuilder()).append("SearchView.SavedState{").append(Integer.toHexString(System.identityHashCode(this))).append(" isIconified=").append(b).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeValue(Boolean.valueOf(b));
        }


        public e(Parcel parcel, ClassLoader classloader)
        {
            super(parcel, classloader);
            b = ((Boolean)parcel.readValue(null)).booleanValue();
        }

        e(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    private static class f extends TouchDelegate
    {

        private final View a;
        private final Rect b = new Rect();
        private final Rect c = new Rect();
        private final Rect d = new Rect();
        private final int e;
        private boolean f;

        public void a(Rect rect, Rect rect1)
        {
            b.set(rect);
            d.set(rect);
            d.inset(-e, -e);
            c.set(rect1);
        }

        public boolean onTouchEvent(MotionEvent motionevent)
        {
            boolean flag1;
            int i1;
            int j1;
            boolean flag3;
            flag1 = true;
            flag3 = false;
            i1 = (int)motionevent.getX();
            j1 = (int)motionevent.getY();
            motionevent.getAction();
            JVM INSTR tableswitch 0 3: default 52
        //                       0 117
        //                       1 144
        //                       2 144
        //                       3 190;
               goto _L1 _L2 _L3 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_190;
_L1:
            boolean flag;
            boolean flag2;
            flag2 = false;
            flag = flag1;
_L6:
            if (flag2)
            {
                boolean flag4;
                if (flag && !c.contains(i1, j1))
                {
                    motionevent.setLocation(a.getWidth() / 2, a.getHeight() / 2);
                } else
                {
                    motionevent.setLocation(i1 - c.left, j1 - c.top);
                }
                flag3 = a.dispatchTouchEvent(motionevent);
            }
            return flag3;
_L2:
            if (!b.contains(i1, j1)) goto _L1; else goto _L5
_L5:
            f = true;
            flag2 = true;
            flag = flag1;
              goto _L6
_L3:
            flag4 = f;
            flag = flag1;
            flag2 = flag4;
            if (flag4)
            {
                flag = flag1;
                flag2 = flag4;
                if (!d.contains(i1, j1))
                {
                    flag = false;
                    flag2 = flag4;
                }
            }
              goto _L6
            flag2 = f;
            f = false;
            flag = flag1;
              goto _L6
        }

        public f(Rect rect, Rect rect1, View view)
        {
            super(rect, view);
            e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            a(rect, rect1);
            a = view;
        }
    }


    static final a i = new a();
    private android.view.View.OnClickListener A;
    private boolean B;
    private boolean C;
    private boolean D;
    private CharSequence E;
    private boolean F;
    private boolean G;
    private int H;
    private boolean I;
    private CharSequence J;
    private boolean K;
    private int L;
    private Bundle M;
    private final Runnable N;
    private Runnable O;
    private final WeakHashMap P;
    final SearchAutoComplete a;
    final ImageView b;
    final ImageView c;
    final ImageView d;
    final ImageView e;
    android.view.View.OnFocusChangeListener f;
    android.support.v4.widget.c g;
    SearchableInfo h;
    private final View j;
    private final View k;
    private f l;
    private Rect m;
    private Rect n;
    private int o[];
    private int p[];
    private final ImageView q;
    private final Drawable r;
    private final int s;
    private final int t;
    private final Intent u;
    private final Intent v;
    private final CharSequence w;
    private c x;
    private b y;
    private d z;

    private Intent a(String s1, Uri uri, String s2, String s3, int i1, String s4)
    {
        s1 = new Intent(s1);
        s1.addFlags(0x10000000);
        if (uri != null)
        {
            s1.setData(uri);
        }
        s1.putExtra("user_query", J);
        if (s3 != null)
        {
            s1.putExtra("query", s3);
        }
        if (s2 != null)
        {
            s1.putExtra("intent_extra_data_key", s2);
        }
        if (M != null)
        {
            s1.putExtra("app_data", M);
        }
        if (i1 != 0)
        {
            s1.putExtra("action_key", i1);
            s1.putExtra("action_msg", s4);
        }
        s1.setComponent(h.getSearchActivity());
        return s1;
    }

    private void a(View view, Rect rect)
    {
        view.getLocationInWindow(o);
        getLocationInWindow(p);
        int i1 = o[1] - p[1];
        int j1 = o[0] - p[0];
        rect.set(j1, i1, view.getWidth() + j1, view.getHeight() + i1);
    }

    private void a(boolean flag)
    {
        boolean flag2 = true;
        byte byte0 = 8;
        C = flag;
        View view;
        int i1;
        boolean flag1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        if (!TextUtils.isEmpty(a.getText()))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        b.setVisibility(i1);
        b(flag1);
        view = j;
        if (flag)
        {
            i1 = 8;
        } else
        {
            i1 = 0;
        }
        view.setVisibility(i1);
        i1 = byte0;
        if (q.getDrawable() != null)
        {
            if (B)
            {
                i1 = byte0;
            } else
            {
                i1 = 0;
            }
        }
        q.setVisibility(i1);
        m();
        if (!flag1)
        {
            flag = flag2;
        } else
        {
            flag = false;
        }
        c(flag);
        l();
    }

    static boolean a(Context context)
    {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private CharSequence b(CharSequence charsequence)
    {
        if (!B || r == null)
        {
            return charsequence;
        } else
        {
            int i1 = (int)((double)a.getTextSize() * 1.25D);
            r.setBounds(0, 0, i1, i1);
            SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder("   ");
            spannablestringbuilder.setSpan(new ImageSpan(r), 1, 2, 33);
            spannablestringbuilder.append(charsequence);
            return spannablestringbuilder;
        }
    }

    private void b(boolean flag)
    {
        byte byte0;
label0:
        {
            byte byte1 = 8;
            byte0 = byte1;
            if (!D)
            {
                break label0;
            }
            byte0 = byte1;
            if (!k())
            {
                break label0;
            }
            byte0 = byte1;
            if (!hasFocus())
            {
                break label0;
            }
            if (!flag)
            {
                byte0 = byte1;
                if (I)
                {
                    break label0;
                }
            }
            byte0 = 0;
        }
        c.setVisibility(byte0);
    }

    private void c(boolean flag)
    {
        int i1;
        if (I && !c() && flag)
        {
            i1 = 0;
            c.setVisibility(8);
        } else
        {
            i1 = 8;
        }
        e.setVisibility(i1);
    }

    private int getPreferredHeight()
    {
        return getContext().getResources().getDimensionPixelSize(android.support.v7.a.a.d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth()
    {
        return getContext().getResources().getDimensionPixelSize(android.support.v7.a.a.d.abc_search_view_preferred_width);
    }

    private boolean i()
    {
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = flag1;
        if (h == null) goto _L2; else goto _L1
_L1:
        flag = flag1;
        if (!h.getVoiceSearchEnabled()) goto _L2; else goto _L3
_L3:
        Intent intent = null;
        if (!h.getVoiceSearchLaunchWebSearch()) goto _L5; else goto _L4
_L4:
        intent = u;
_L7:
        flag = flag1;
        if (intent != null)
        {
            flag = flag1;
            if (getContext().getPackageManager().resolveActivity(intent, 0x10000) != null)
            {
                flag = true;
            }
        }
_L2:
        return flag;
_L5:
        if (h.getVoiceSearchLaunchRecognizer())
        {
            intent = v;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    private boolean k()
    {
        return (D || I) && !c();
    }

    private void l()
    {
        byte byte0;
label0:
        {
            byte byte1 = 8;
            byte0 = byte1;
            if (!k())
            {
                break label0;
            }
            if (c.getVisibility() != 0)
            {
                byte0 = byte1;
                if (e.getVisibility() != 0)
                {
                    break label0;
                }
            }
            byte0 = 0;
        }
        k.setVisibility(byte0);
    }

    private void m()
    {
        boolean flag2 = true;
        boolean flag1 = false;
        ImageView imageview;
        Drawable drawable;
        boolean flag;
        int i1;
        if (!TextUtils.isEmpty(a.getText()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = ((flag2) ? 1 : 0);
        if (!flag)
        {
            if (B && !K)
            {
                i1 = ((flag2) ? 1 : 0);
            } else
            {
                i1 = 0;
            }
        }
        imageview = d;
        if (i1 != 0)
        {
            i1 = ((flag1) ? 1 : 0);
        } else
        {
            i1 = 8;
        }
        imageview.setVisibility(i1);
        drawable = d.getDrawable();
        if (drawable != null)
        {
            int ai1[];
            if (flag)
            {
                ai1 = ENABLED_STATE_SET;
            } else
            {
                ai1 = EMPTY_STATE_SET;
            }
            drawable.setState(ai1);
        }
    }

    private void n()
    {
        post(N);
    }

    private void o()
    {
        CharSequence charsequence = getQueryHint();
        SearchAutoComplete searchautocomplete = a;
        Object obj = charsequence;
        if (charsequence == null)
        {
            obj = "";
        }
        searchautocomplete.setHint(b(((CharSequence) (obj))));
    }

    private void p()
    {
        boolean flag = true;
        a.setThreshold(h.getSuggestThreshold());
        a.setImeOptions(h.getImeOptions());
        int j1 = h.getInputType();
        int i1 = j1;
        if ((j1 & 0xf) == 1)
        {
            j1 &= 0xfffeffff;
            i1 = j1;
            if (h.getSuggestAuthority() != null)
            {
                i1 = j1 | 0x10000 | 0x80000;
            }
        }
        a.setInputType(i1);
        if (g != null)
        {
            g.a(null);
        }
        if (h.getSuggestAuthority() != null)
        {
            g = new aq(getContext(), this, h, P);
            a.setAdapter(g);
            aq aq1 = (aq)g;
            byte byte0 = flag;
            if (F)
            {
                byte0 = 2;
            }
            aq1.a(byte0);
        }
    }

    private void q()
    {
        a.dismissDropDown();
    }

    private void setQuery(CharSequence charsequence)
    {
        a.setText(charsequence);
        SearchAutoComplete searchautocomplete = a;
        int i1;
        if (TextUtils.isEmpty(charsequence))
        {
            i1 = 0;
        } else
        {
            i1 = charsequence.length();
        }
        searchautocomplete.setSelection(i1);
    }

    public void a()
    {
        if (K)
        {
            return;
        } else
        {
            K = true;
            L = a.getImeOptions();
            a.setImeOptions(L | 0x2000000);
            a.setText("");
            setIconified(false);
            return;
        }
    }

    void a(int i1, String s1, String s2)
    {
        s1 = a("android.intent.action.SEARCH", null, null, s2, i1, s1);
        getContext().startActivity(s1);
    }

    void a(CharSequence charsequence)
    {
        setQuery(charsequence);
    }

    public void a(CharSequence charsequence, boolean flag)
    {
        a.setText(charsequence);
        if (charsequence != null)
        {
            a.setSelection(a.length());
            J = charsequence;
        }
        if (flag && !TextUtils.isEmpty(charsequence))
        {
            d();
        }
    }

    public void b()
    {
        a("", false);
        clearFocus();
        a(true);
        a.setImeOptions(L);
        K = false;
    }

    public boolean c()
    {
        return C;
    }

    public void clearFocus()
    {
        G = true;
        super.clearFocus();
        a.clearFocus();
        SearchAutoComplete.a(a, false);
        G = false;
    }

    void d()
    {
        android.text.Editable editable = a.getText();
        if (editable != null && TextUtils.getTrimmedLength(editable) > 0 && (x == null || !x.a(editable.toString())))
        {
            if (h != null)
            {
                a(0, null, editable.toString());
            }
            SearchAutoComplete.a(a, false);
            q();
        }
    }

    void e()
    {
        if (TextUtils.isEmpty(a.getText()))
        {
            if (B && (y == null || !y.a()))
            {
                clearFocus();
                a(true);
            }
            return;
        } else
        {
            a.setText("");
            a.requestFocus();
            SearchAutoComplete.a(a, true);
            return;
        }
    }

    void f()
    {
        a(false);
        a.requestFocus();
        SearchAutoComplete.a(a, true);
        if (A != null)
        {
            A.onClick(this);
        }
    }

    void g()
    {
        a(c());
        n();
        if (a.hasFocus())
        {
            h();
        }
    }

    public int getImeOptions()
    {
        return a.getImeOptions();
    }

    public int getInputType()
    {
        return a.getInputType();
    }

    public int getMaxWidth()
    {
        return H;
    }

    public CharSequence getQuery()
    {
        return a.getText();
    }

    public CharSequence getQueryHint()
    {
        if (E != null)
        {
            return E;
        }
        if (h != null && h.getHintId() != 0)
        {
            return getContext().getText(h.getHintId());
        } else
        {
            return w;
        }
    }

    int getSuggestionCommitIconResId()
    {
        return t;
    }

    int getSuggestionRowLayout()
    {
        return s;
    }

    public android.support.v4.widget.c getSuggestionsAdapter()
    {
        return g;
    }

    void h()
    {
        i.a(a);
        i.b(a);
    }

    protected void onDetachedFromWindow()
    {
        removeCallbacks(N);
        post(O);
        super.onDetachedFromWindow();
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
label0:
        {
            super.onLayout(flag, i1, j1, k1, l1);
            if (flag)
            {
                a(a, m);
                n.set(m.left, 0, m.right, l1 - j1);
                if (l != null)
                {
                    break label0;
                }
                l = new f(n, m, a);
                setTouchDelegate(l);
            }
            return;
        }
        l.a(n, m);
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1;
        int l1;
        if (c())
        {
            super.onMeasure(i1, j1);
            return;
        }
        l1 = android.view.View.MeasureSpec.getMode(i1);
        k1 = android.view.View.MeasureSpec.getSize(i1);
        l1;
        JVM INSTR lookupswitch 3: default 60
    //                   -2147483648: 119
    //                   0: 171
    //                   1073741824: 150;
           goto _L1 _L2 _L3 _L4
_L1:
        i1 = k1;
_L8:
        k1 = android.view.View.MeasureSpec.getMode(j1);
        j1 = android.view.View.MeasureSpec.getSize(j1);
        k1;
        JVM INSTR lookupswitch 2: default 100
    //                   -2147483648: 194
    //                   0: 206;
           goto _L5 _L6 _L7
_L5:
        break; /* Loop/switch isn't completed */
_L7:
        break MISSING_BLOCK_LABEL_206;
_L9:
        super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(j1, 0x40000000));
        return;
_L2:
        if (H > 0)
        {
            i1 = Math.min(H, k1);
        } else
        {
            i1 = Math.min(getPreferredWidth(), k1);
        }
          goto _L8
_L4:
        i1 = k1;
        if (H > 0)
        {
            i1 = Math.min(H, k1);
        }
          goto _L8
_L3:
        if (H > 0)
        {
            i1 = H;
        } else
        {
            i1 = getPreferredWidth();
        }
          goto _L8
_L6:
        j1 = Math.min(getPreferredHeight(), j1);
          goto _L9
        j1 = getPreferredHeight();
          goto _L9
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof e))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        } else
        {
            parcelable = (e)parcelable;
            super.onRestoreInstanceState(parcelable.a());
            a(((e) (parcelable)).b);
            requestLayout();
            return;
        }
    }

    protected Parcelable onSaveInstanceState()
    {
        e e1 = new e(super.onSaveInstanceState());
        e1.b = c();
        return e1;
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        n();
    }

    public boolean requestFocus(int i1, Rect rect)
    {
        while (G || !isFocusable()) 
        {
            return false;
        }
        if (!c())
        {
            boolean flag = a.requestFocus(i1, rect);
            if (flag)
            {
                a(false);
            }
            return flag;
        } else
        {
            return super.requestFocus(i1, rect);
        }
    }

    public void setAppSearchData(Bundle bundle)
    {
        M = bundle;
    }

    public void setIconified(boolean flag)
    {
        if (flag)
        {
            e();
            return;
        } else
        {
            f();
            return;
        }
    }

    public void setIconifiedByDefault(boolean flag)
    {
        if (B == flag)
        {
            return;
        } else
        {
            B = flag;
            a(flag);
            o();
            return;
        }
    }

    public void setImeOptions(int i1)
    {
        a.setImeOptions(i1);
    }

    public void setInputType(int i1)
    {
        a.setInputType(i1);
    }

    public void setMaxWidth(int i1)
    {
        H = i1;
        requestLayout();
    }

    public void setOnCloseListener(b b1)
    {
        y = b1;
    }

    public void setOnQueryTextFocusChangeListener(android.view.View.OnFocusChangeListener onfocuschangelistener)
    {
        f = onfocuschangelistener;
    }

    public void setOnQueryTextListener(c c1)
    {
        x = c1;
    }

    public void setOnSearchClickListener(android.view.View.OnClickListener onclicklistener)
    {
        A = onclicklistener;
    }

    public void setOnSuggestionListener(d d1)
    {
        z = d1;
    }

    public void setQueryHint(CharSequence charsequence)
    {
        E = charsequence;
        o();
    }

    public void setQueryRefinementEnabled(boolean flag)
    {
        F = flag;
        if (g instanceof aq)
        {
            aq aq1 = (aq)g;
            byte byte0;
            if (flag)
            {
                byte0 = 2;
            } else
            {
                byte0 = 1;
            }
            aq1.a(byte0);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableinfo)
    {
        h = searchableinfo;
        if (h != null)
        {
            p();
            o();
        }
        I = i();
        if (I)
        {
            a.setPrivateImeOptions("nm");
        }
        a(c());
    }

    public void setSubmitButtonEnabled(boolean flag)
    {
        D = flag;
        a(c());
    }

    public void setSuggestionsAdapter(android.support.v4.widget.c c1)
    {
        g = c1;
        a.setAdapter(g);
    }


    // Unreferenced inner class android/support/v7/widget/SearchView$SearchAutoComplete$1

/* anonymous class */
    class SearchAutoComplete._cls1
        implements Runnable
    {

        final SearchAutoComplete a;

        public void run()
        {
            SearchAutoComplete.a(a);
        }

            
            {
                a = searchautocomplete;
                super();
            }
    }

}
