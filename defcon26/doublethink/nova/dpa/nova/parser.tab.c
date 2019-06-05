/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "nova/parser.y" /* yacc.c:339  */
 
/*
    This file is part of The Didactic PDP-8 Assembler
    Copyright (C) 2002 Toby Thain, toby@telegraphics.com.au

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by  
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License  
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

#include "asm.h"
#include "nova.h"

#ifndef TOK_TWOAC
  #include "parser.tab.h"
#endif

extern int endflag,curloc,nrel_loc,zrel_loc,bootprog,indirect;
int radix,saveradix,saveinexpr,indexseen,seenterm,relmode = NORMAL_REL,
    condtop = 0,cond = 1,condstack[MAXCONDDEPTH],txtm=0,txtn=0;
struct sym_rec *symlist[MAXSYMLIST];
int nsyms = 0;

void dalc(struct sym_rec *symbol,int v,int lineno){
	char *sym = symbol->name,*p;
	/* look for trailing flag characters */
	if( strlen(sym) > 3 && (p = strpbrk(sym+3,"ZOCLRS")) == sym ){
		DPUTS(".DALC: stripping flag characters from mnemonic");
		*p = 0; // strip flags. FIXME: there might be non-flag characters in the trailing part!!
		twoac(sym,v);
	}else
		doassign(symbol,v,TOK_TWOAC,ABSOLUTE,lineno); 
}

void dio(struct sym_rec *s,int v,int lineno){
	extern char *class_f[];
	char *sym = s->name,*p;
	
	/* look for a three character mnemonic immediately followed by flags */
	if( strlen(sym) > 3 && (p = strpbrk(sym+3,"SCP")) == sym ){
		DPUTS(".DIO: stripping flag characters from mnemonic");
		*p = 0; // strip flags. FIXME: there might be non-flag characters in the trailing part!!
		iodata(sym,v,class_f);
	}else
		doassign(s,v,TOK_IO,ABSOLUTE,lineno); 
}

void badreloc(char *op){
	if(cond && pass==2)
		fatal("bad relocation mode: %s",op);
}

void popcond(){
	if(condtop) 
		cond = condstack[--condtop];
	else 
		fatal("ENDC without IF");
}

void pushcond(int c){
	if(condtop == MAXCONDDEPTH)
		fatal("too many nested IFs!");
	else{
		condstack[condtop++] = cond;
		cond = cond && c;
	}
}

void ignoring(char *s){
	if(pass == 1) warn("ignoring %s directive in bootstrap",s);
}


#line 150 "y.tab.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "y.tab.h".  */
#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    TOK_LE = 258,
    TOK_GE = 259,
    TOK_EQ = 260,
    TOK_NE = 261,
    TOK_SEP = 262,
    TOK_SYM = 263,
    TOK_SKIP = 264,
    TOK_NOAC = 265,
    TOK_ONEAC = 266,
    TOK_TWOAC = 267,
    TOK_IO = 268,
    TOK_TRAP = 269,
    TOK_DALC = 270,
    TOK_DIAC = 271,
    TOK_DIO = 272,
    TOK_DIOA = 273,
    TOK_DISD = 274,
    TOK_DISS = 275,
    TOK_DMR = 276,
    TOK_DMRA = 277,
    TOK_DUSR = 278,
    TOK_XPNG = 279,
    TOK_BLK = 280,
    TOK_NREL = 281,
    TOK_ZREL = 282,
    TOK_COMM = 283,
    TOK_CSIZ = 284,
    TOK_ENT = 285,
    TOK_ENTO = 286,
    TOK_EXTD = 287,
    TOK_EXTN = 288,
    TOK_EXTU = 289,
    TOK_GADD = 290,
    TOK_GLOC = 291,
    TOK_GREF = 292,
    TOK_ENDC = 293,
    TOK_IFE = 294,
    TOK_IFG = 295,
    TOK_IFL = 296,
    TOK_IFN = 297,
    TOK_TXT = 298,
    TOK_TXTE = 299,
    TOK_TXTF = 300,
    TOK_TXTM = 301,
    TOK_TXTN = 302,
    TOK_TXTO = 303,
    TOK_EJEC = 304,
    TOK_NOCON = 305,
    TOK_NOLOC = 306,
    TOK_NOMAC = 307,
    TOK_REV = 308,
    TOK_RDX = 309,
    TOK_RDXO = 310,
    TOK_TITL = 311,
    TOK_RB = 312,
    TOK_LMIT = 313,
    TOK_PASS = 314,
    TOK_EOF = 315,
    TOK_EOT = 316,
    TOK_END = 317,
    TOK_LOC = 318,
    TOK_NUM = 319,
    TOK_DOT = 320,
    TOK_NUMD = 321,
    TOK_FPS = 322,
    TOK_STRING = 323
  };
#endif
/* Tokens.  */
#define TOK_LE 258
#define TOK_GE 259
#define TOK_EQ 260
#define TOK_NE 261
#define TOK_SEP 262
#define TOK_SYM 263
#define TOK_SKIP 264
#define TOK_NOAC 265
#define TOK_ONEAC 266
#define TOK_TWOAC 267
#define TOK_IO 268
#define TOK_TRAP 269
#define TOK_DALC 270
#define TOK_DIAC 271
#define TOK_DIO 272
#define TOK_DIOA 273
#define TOK_DISD 274
#define TOK_DISS 275
#define TOK_DMR 276
#define TOK_DMRA 277
#define TOK_DUSR 278
#define TOK_XPNG 279
#define TOK_BLK 280
#define TOK_NREL 281
#define TOK_ZREL 282
#define TOK_COMM 283
#define TOK_CSIZ 284
#define TOK_ENT 285
#define TOK_ENTO 286
#define TOK_EXTD 287
#define TOK_EXTN 288
#define TOK_EXTU 289
#define TOK_GADD 290
#define TOK_GLOC 291
#define TOK_GREF 292
#define TOK_ENDC 293
#define TOK_IFE 294
#define TOK_IFG 295
#define TOK_IFL 296
#define TOK_IFN 297
#define TOK_TXT 298
#define TOK_TXTE 299
#define TOK_TXTF 300
#define TOK_TXTM 301
#define TOK_TXTN 302
#define TOK_TXTO 303
#define TOK_EJEC 304
#define TOK_NOCON 305
#define TOK_NOLOC 306
#define TOK_NOMAC 307
#define TOK_REV 308
#define TOK_RDX 309
#define TOK_RDXO 310
#define TOK_TITL 311
#define TOK_RB 312
#define TOK_LMIT 313
#define TOK_PASS 314
#define TOK_EOF 315
#define TOK_EOT 316
#define TOK_END 317
#define TOK_LOC 318
#define TOK_NUM 319
#define TOK_DOT 320
#define TOK_NUMD 321
#define TOK_FPS 322
#define TOK_STRING 323

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 88 "nova/parser.y" /* yacc.c:355  */

	struct operand value;
	unsigned long valuel;
	struct sym_rec *symbol;
	char *string;

#line 333 "y.tab.c" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif

/* Location type.  */
#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE YYLTYPE;
struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
};
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


extern YYSTYPE yylval;
extern YYLTYPE yylloc;
int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 364 "y.tab.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL \
             && defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
  YYLTYPE yyls_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE) + sizeof (YYLTYPE)) \
      + 2 * YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  4
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   437

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  84
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  47
/* YYNRULES -- Number of rules.  */
#define YYNRULES  123
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  215

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   323

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    75,     2,    80,     2,     2,    76,     2,
      82,    83,    73,    72,    81,    71,     2,    74,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    79,     2,
      69,    78,    70,     2,     2,     2,    77,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   124,   124,   125,   125,   126,   130,   134,   134,   136,
     137,   140,   150,   150,   152,   153,   154,   155,   156,   157,
     160,   163,   164,   166,   167,   169,   170,   176,   177,   179,
     179,   180,   186,   187,   225,   226,   226,   236,   236,   250,
     250,   259,   259,   280,   280,   286,   286,   292,   292,   298,
     298,   302,   302,   306,   306,   310,   310,   314,   314,   318,
     318,   323,   326,   330,   334,   338,   345,   346,   347,   349,
     353,   359,   360,   361,   362,   363,   364,   366,   367,   375,
     376,   379,   379,   379,   379,   382,   385,   388,   391,   394,
     397,   400,   403,   406,   409,   411,   422,   426,   430,   435,
     439,   443,   443,   447,   452,   452,   456,   456,   461,   465,
     471,   472,   473,   474,   475,   477,   478,   479,   482,   482,
     491,   496,   497,   498
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "TOK_LE", "TOK_GE", "TOK_EQ", "TOK_NE",
  "TOK_SEP", "TOK_SYM", "TOK_SKIP", "TOK_NOAC", "TOK_ONEAC", "TOK_TWOAC",
  "TOK_IO", "TOK_TRAP", "TOK_DALC", "TOK_DIAC", "TOK_DIO", "TOK_DIOA",
  "TOK_DISD", "TOK_DISS", "TOK_DMR", "TOK_DMRA", "TOK_DUSR", "TOK_XPNG",
  "TOK_BLK", "TOK_NREL", "TOK_ZREL", "TOK_COMM", "TOK_CSIZ", "TOK_ENT",
  "TOK_ENTO", "TOK_EXTD", "TOK_EXTN", "TOK_EXTU", "TOK_GADD", "TOK_GLOC",
  "TOK_GREF", "TOK_ENDC", "TOK_IFE", "TOK_IFG", "TOK_IFL", "TOK_IFN",
  "TOK_TXT", "TOK_TXTE", "TOK_TXTF", "TOK_TXTM", "TOK_TXTN", "TOK_TXTO",
  "TOK_EJEC", "TOK_NOCON", "TOK_NOLOC", "TOK_NOMAC", "TOK_REV", "TOK_RDX",
  "TOK_RDXO", "TOK_TITL", "TOK_RB", "TOK_LMIT", "TOK_PASS", "TOK_EOF",
  "TOK_EOT", "TOK_END", "TOK_LOC", "TOK_NUM", "TOK_DOT", "TOK_NUMD",
  "TOK_FPS", "TOK_STRING", "'<'", "'>'", "'-'", "'+'", "'*'", "'/'", "'!'",
  "'&'", "'B'", "'='", "':'", "'#'", "','", "'('", "')'", "$accept",
  "program", "$@1", "assign", "assignval", "asminstr", "label", "labels",
  "stmt", "ac", "opthash", "optskip", "optindex", "termnotsym", "$@2",
  "term", "subexpr", "$@3", "$@4", "$@5", "$@6", "$@7", "$@8", "$@9",
  "$@10", "$@11", "$@12", "$@13", "$@14", "$@15", "expr", "ea", "noac",
  "oneac", "twoac", "iooperand", "io", "trap", "instr", "optexpr",
  "symlist", "textop", "pseudoop", "$@16", "$@17", "$@18", "$@19", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,    60,
      62,    45,    43,    42,    47,    33,    38,    66,    61,    58,
      35,    44,    40,    41
};
# endif

#define YYPACT_NINF -79

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-79)))

#define YYTABLE_NINF -68

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     169,     9,   242,   -79,   -79,   -61,    59,    59,   -58,    59,
      59,    15,    16,    17,    18,    23,    24,    25,    28,    35,
     -79,    59,   -79,   -79,    36,    59,   -79,    37,   -79,   -79,
      38,    39,   -79,    59,    59,    59,    59,   -79,   -79,   -79,
      59,    59,   -79,   -79,    40,   -79,   -79,    59,    59,   -79,
     -79,   -79,    59,   -79,   -79,   -79,   -79,   315,   -79,   -28,
     -79,   361,   -79,   -79,   -79,   -79,   -79,   -79,   -79,   -18,
     -79,    51,   -79,   -79,   -30,   -79,   -29,   -79,   -79,    59,
     -27,    46,   -79,   -26,   -22,   -21,   -20,   -12,   -10,    -9,
      -8,    -7,    -2,   -79,    -3,   -79,    52,   -79,    52,    52,
      -1,    10,   -79,   -79,   -79,   -79,   -79,   -79,    59,   -79,
     -79,   -79,   -79,   -79,   -79,    59,    -5,   -79,   -79,    65,
     -79,   -79,   -79,   -79,   -79,   -79,   -79,   -79,   -79,   -79,
     -79,   -79,   -79,   -79,     1,   -79,   -79,   -79,    59,   -79,
      59,    12,    59,    59,    84,    84,    84,    84,    84,    84,
      84,    84,    84,    59,   -79,    19,    19,    19,    59,    59,
     -79,    34,   -79,    59,    59,    59,    59,    59,    59,    59,
      59,    59,    59,    59,    59,    59,   -79,   -79,    59,   -79,
      20,   -79,   -79,   -79,   -79,   -79,   -79,   -79,   -79,   -79,
     -79,    69,   -79,   -79,   -79,   -79,   -62,   -62,   -62,   -62,
     -62,   -62,   -79,   -79,   -79,   -79,   -79,   -79,    30,    59,
     -79,    81,   -79,   -79,   -79
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,    14,     5,     1,    33,     0,     0,    21,    66,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      94,     0,    96,    97,     0,     0,   101,     0,   104,   106,
       0,     0,   110,     0,     0,     0,     0,    81,    82,    83,
       0,     0,    84,   118,     0,   122,   123,    77,     0,    27,
      28,    18,     0,    29,    19,    17,    12,    15,     3,    32,
      34,    61,    71,    72,    73,    74,    75,    76,     9,     0,
      10,     0,    11,    33,    25,    63,     0,    20,    22,     0,
       0,    20,    69,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    95,     0,   100,     0,   103,     0,     0,
       0,     0,   111,   112,   113,   114,   116,   117,     0,   120,
      78,   121,    98,    32,    31,     0,    33,    16,    13,     0,
      35,    57,    51,    49,    59,    55,    53,    39,    37,    41,
      43,    47,    45,   115,    33,     7,     6,     8,     0,    62,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    79,   102,   105,   107,     0,     0,
     119,     0,     4,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    26,    64,     0,    68,
       0,    85,    86,    87,    88,    89,    90,    91,    92,    93,
      99,     0,   108,   109,    30,    36,    58,    52,    50,    60,
      56,    54,    40,    38,    42,    44,    48,    46,    23,     0,
      80,     0,    65,    70,    24
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -79,   -79,   -79,    41,   -79,    42,    57,   -79,   -79,    -4,
     -79,   -79,   -79,   -50,   -79,   -45,   234,   -79,   -79,   -79,
     -79,   -79,   -79,   -79,   -79,   -79,   -79,   -79,   -79,   -79,
      -6,   -19,   -79,   -79,   -79,   -79,   -79,   -79,   -63,   -79,
     -78,   -79,   -79,   -79,   -79,   -79,   -79
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     2,   119,    54,   136,    55,    56,    57,    58,    76,
      79,   212,   139,    59,   115,    60,    61,   163,   171,   170,
     172,   173,   175,   174,   166,   165,   169,   168,   164,   167,
      62,    75,    63,    64,    65,    82,    66,    67,    68,   111,
     155,    69,    70,    96,    98,    99,   108
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      74,    77,   113,    81,    77,    80,    83,   114,   137,   127,
     128,   129,   130,   131,   132,    93,     3,    71,    72,    95,
     156,   157,    78,    84,    85,    86,    87,   102,   103,   104,
     105,    88,    89,    90,   106,   107,    91,   121,   122,   123,
     124,   110,   112,    92,    94,    97,   100,   101,   109,   120,
     133,   138,   140,   -67,   142,   143,   144,   145,   146,   134,
     154,     6,     7,     8,     9,    10,   147,    73,   148,   149,
     150,   151,   162,    77,    72,   141,   152,   210,   153,    71,
     158,   181,   182,   183,   184,   185,   186,   187,   188,   189,
     214,   159,    73,   178,     6,     7,     8,     9,    10,   117,
     191,   209,   160,   125,   126,   127,   128,   129,   130,   131,
     132,   211,   135,   113,   118,    49,    50,   194,   195,     0,
       0,   177,    52,    49,    50,     0,     0,     0,     0,     0,
      52,     0,   176,    53,    74,     0,   179,    77,     0,   180,
       0,    53,     0,     0,     0,     0,     0,   190,    49,    50,
       0,     0,   192,   193,     0,    52,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    53,     0,     0,    -2,
       1,     0,    77,     0,   208,     0,    -2,    -2,     0,    -2,
      -2,    -2,    -2,    -2,    -2,    -2,    -2,    -2,    -2,    -2,
      -2,    -2,    -2,    -2,    -2,    -2,    -2,    -2,    -2,    -2,
      -2,    -2,    -2,   213,    -2,     0,    -2,    -2,    -2,    -2,
      -2,    -2,    -2,    -2,    -2,    -2,    -2,    -2,     0,     0,
       0,     0,     0,    -2,     0,    -2,     0,     0,     0,    -2,
      -2,    -2,    -2,    -2,    -2,    -2,     0,     0,     0,     0,
      -2,     0,     4,     0,     0,     0,     0,     0,     0,     0,
       5,    -2,     6,     7,     8,     9,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    27,    28,    29,     0,    30,     0,    31,
      32,    33,    34,    35,    36,    37,    38,    39,    40,    41,
      42,     0,     0,     0,     0,     0,    43,     0,    44,     0,
       0,     0,    45,    46,    47,    48,    49,    50,    51,     0,
       0,     0,     0,    52,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   116,    53,     6,     7,     8,     9,    10,
      11,    12,    13,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    28,    29,   161,
      30,     0,    31,    32,    33,    34,    35,    36,    37,    38,
      39,    40,    41,    42,   121,   122,   123,   124,     0,    43,
       0,    44,     0,     0,     0,    45,    46,    47,    48,    49,
      50,     0,     0,     0,     0,     0,    52,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    53,   196,   197,
     198,   199,   200,   201,   202,   203,   204,   205,   206,   207,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     125,   126,   127,   128,   129,   130,   131,   132
};

static const yytype_int16 yycheck[] =
{
       6,     7,    52,     9,    10,     9,    10,    52,    71,    71,
      72,    73,    74,    75,    76,    21,     7,    78,    79,    25,
      98,    99,    80,     8,     8,     8,     8,    33,    34,    35,
      36,     8,     8,     8,    40,    41,     8,     3,     4,     5,
       6,    47,    48,     8,     8,     8,     8,     8,     8,    77,
      68,    81,    81,     7,    81,    81,    78,    78,    78,     8,
       8,    10,    11,    12,    13,    14,    78,     8,    78,    78,
      78,    78,     7,    79,    79,    79,    78,     8,    81,    78,
      81,   144,   145,   146,   147,   148,   149,   150,   151,   152,
       9,    81,     8,    81,    10,    11,    12,    13,    14,    57,
      81,    81,   108,    69,    70,    71,    72,    73,    74,    75,
      76,    81,    71,   163,    57,    64,    65,    83,   163,    -1,
      -1,   140,    71,    64,    65,    -1,    -1,    -1,    -1,    -1,
      71,    -1,   138,    82,   140,    -1,   142,   143,    -1,   143,
      -1,    82,    -1,    -1,    -1,    -1,    -1,   153,    64,    65,
      -1,    -1,   158,   159,    -1,    71,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    82,    -1,    -1,     0,
       1,    -1,   178,    -1,   178,    -1,     7,     8,    -1,    10,
      11,    12,    13,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    28,    29,    30,
      31,    32,    33,   209,    35,    -1,    37,    38,    39,    40,
      41,    42,    43,    44,    45,    46,    47,    48,    -1,    -1,
      -1,    -1,    -1,    54,    -1,    56,    -1,    -1,    -1,    60,
      61,    62,    63,    64,    65,    66,    -1,    -1,    -1,    -1,
      71,    -1,     0,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       8,    82,    10,    11,    12,    13,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,    33,    -1,    35,    -1,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      48,    -1,    -1,    -1,    -1,    -1,    54,    -1,    56,    -1,
      -1,    -1,    60,    61,    62,    63,    64,    65,    66,    -1,
      -1,    -1,    -1,    71,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,     8,    82,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,   115,
      35,    -1,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,     3,     4,     5,     6,    -1,    54,
      -1,    56,    -1,    -1,    -1,    60,    61,    62,    63,    64,
      65,    -1,    -1,    -1,    -1,    -1,    71,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    82,   164,   165,
     166,   167,   168,   169,   170,   171,   172,   173,   174,   175,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      69,    70,    71,    72,    73,    74,    75,    76
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     1,    85,     7,     0,     8,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    27,    28,    29,    30,    31,    32,    33,
      35,    37,    38,    39,    40,    41,    42,    43,    44,    45,
      46,    47,    48,    54,    56,    60,    61,    62,    63,    64,
      65,    66,    71,    82,    87,    89,    90,    91,    92,    97,
      99,   100,   114,   116,   117,   118,   120,   121,   122,   125,
     126,    78,    79,     8,   114,   115,    93,   114,    80,    94,
      93,   114,   119,    93,     8,     8,     8,     8,     8,     8,
       8,     8,     8,   114,     8,   114,   127,     8,   128,   129,
       8,     8,   114,   114,   114,   114,   114,   114,   130,     8,
     114,   123,   114,    97,    99,    98,     8,    89,    90,    86,
      77,     3,     4,     5,     6,    69,    70,    71,    72,    73,
      74,    75,    76,    68,     8,    87,    88,   122,    81,    96,
      81,    93,    81,    81,    78,    78,    78,    78,    78,    78,
      78,    78,    78,    81,     8,   124,   124,   124,    81,    81,
     114,   100,     7,   101,   112,   109,   108,   113,   111,   110,
     103,   102,   104,   105,   107,   106,   114,   115,    81,   114,
      93,   122,   122,   122,   122,   122,   122,   122,   122,   122,
     114,    81,   114,   114,    83,    99,   100,   100,   100,   100,
     100,   100,   100,   100,   100,   100,   100,   100,    93,    81,
       8,    81,    95,   114,     9
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    84,    85,    86,    85,    85,    87,    88,    88,    89,
      89,    90,    91,    91,    92,    92,    92,    92,    92,    92,
      93,    94,    94,    95,    95,    96,    96,    97,    97,    98,
      97,    97,    99,    99,   100,   101,   100,   102,   100,   103,
     100,   104,   100,   105,   100,   106,   100,   107,   100,   108,
     100,   109,   100,   110,   100,   111,   100,   112,   100,   113,
     100,   114,   115,   116,   117,   118,   119,   119,   119,   120,
     121,   122,   122,   122,   122,   122,   122,   123,   123,   124,
     124,   125,   125,   125,   125,   126,   126,   126,   126,   126,
     126,   126,   126,   126,   126,   126,   126,   126,   126,   126,
     126,   127,   126,   126,   128,   126,   129,   126,   126,   126,
     126,   126,   126,   126,   126,   126,   126,   126,   130,   126,
     126,   126,   126,   126
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     0,     0,     4,     2,     3,     1,     1,     1,
       1,     2,     1,     2,     0,     1,     2,     1,     1,     1,
       1,     0,     1,     0,     2,     0,     2,     1,     1,     0,
       4,     2,     1,     1,     1,     0,     4,     0,     4,     0,
       4,     0,     4,     0,     4,     0,     4,     0,     4,     0,
       4,     0,     4,     0,     4,     0,     4,     0,     4,     0,
       4,     1,     2,     2,     4,     6,     0,     1,     3,     2,
       6,     1,     1,     1,     1,     1,     1,     0,     1,     1,
       3,     1,     1,     1,     1,     4,     4,     4,     4,     4,
       4,     4,     4,     4,     1,     2,     1,     1,     2,     4,
       2,     0,     3,     2,     0,     3,     0,     3,     4,     4,
       1,     2,     2,     2,     2,     2,     2,     2,     0,     3,
       2,     2,     1,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)                                \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;        \
          (Current).first_column = YYRHSLOC (Rhs, 1).first_column;      \
          (Current).last_line    = YYRHSLOC (Rhs, N).last_line;         \
          (Current).last_column  = YYRHSLOC (Rhs, N).last_column;       \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).first_line   = (Current).last_line   =              \
            YYRHSLOC (Rhs, 0).last_line;                                \
          (Current).first_column = (Current).last_column =              \
            YYRHSLOC (Rhs, 0).last_column;                              \
        }                                                               \
    while (0)
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K])


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL

/* Print *YYLOCP on YYO.  Private, do not rely on its existence. */

YY_ATTRIBUTE_UNUSED
static unsigned
yy_location_print_ (FILE *yyo, YYLTYPE const * const yylocp)
{
  unsigned res = 0;
  int end_col = 0 != yylocp->last_column ? yylocp->last_column - 1 : 0;
  if (0 <= yylocp->first_line)
    {
      res += YYFPRINTF (yyo, "%d", yylocp->first_line);
      if (0 <= yylocp->first_column)
        res += YYFPRINTF (yyo, ".%d", yylocp->first_column);
    }
  if (0 <= yylocp->last_line)
    {
      if (yylocp->first_line < yylocp->last_line)
        {
          res += YYFPRINTF (yyo, "-%d", yylocp->last_line);
          if (0 <= end_col)
            res += YYFPRINTF (yyo, ".%d", end_col);
        }
      else if (0 <= end_col && yylocp->first_column < end_col)
        res += YYFPRINTF (yyo, "-%d", end_col);
    }
  return res;
 }

#  define YY_LOCATION_PRINT(File, Loc)          \
  yy_location_print_ (File, &(Loc))

# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value, Location); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  YYUSE (yylocationp);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  YY_LOCATION_PRINT (yyoutput, *yylocationp);
  YYFPRINTF (yyoutput, ": ");
  yy_symbol_value_print (yyoutput, yytype, yyvaluep, yylocationp);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, YYLTYPE *yylsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                       , &(yylsp[(yyi + 1) - (yynrhs)])                       );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, yylsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep, YYLTYPE *yylocationp)
{
  YYUSE (yyvaluep);
  YYUSE (yylocationp);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Location data for the lookahead symbol.  */
YYLTYPE yylloc
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
  = { 1, 1, 1, 1 }
# endif
;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.
       'yyls': related to locations.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    /* The location stack.  */
    YYLTYPE yylsa[YYINITDEPTH];
    YYLTYPE *yyls;
    YYLTYPE *yylsp;

    /* The locations where the error started and ended.  */
    YYLTYPE yyerror_range[3];

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;
  YYLTYPE yyloc;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yylsp = yyls = yylsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  yylsp[0] = yylloc;
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;
        YYLTYPE *yyls1 = yyls;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yyls1, yysize * sizeof (*yylsp),
                    &yystacksize);

        yyls = yyls1;
        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
        YYSTACK_RELOCATE (yyls_alloc, yyls);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;
      yylsp = yyls + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END
  *++yylsp = yylloc;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];

  /* Default location.  */
  YYLLOC_DEFAULT (yyloc, (yylsp - yylen), yylen);
  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 3:
#line 125 "nova/parser.y" /* yacc.c:1646  */
    { /*dolisting(yy_act,yyleng,yytext);*/ }
#line 1749 "y.tab.c" /* yacc.c:1646  */
    break;

  case 4:
#line 125 "nova/parser.y" /* yacc.c:1646  */
    { indirect = 0; flushlist(); }
#line 1755 "y.tab.c" /* yacc.c:1646  */
    break;

  case 5:
#line 126 "nova/parser.y" /* yacc.c:1646  */
    { indirect = 0; flushlist(); yyerrok; }
#line 1761 "y.tab.c" /* yacc.c:1646  */
    break;

  case 6:
#line 131 "nova/parser.y" /* yacc.c:1646  */
    { if(cond) doassign((yyvsp[-2].symbol), (yyvsp[0].value).value, TOK_SYM, (yyvsp[0].value).relmode, (yylsp[-2]).first_line);
		(yyval.value) = (yyvsp[0].value); }
#line 1768 "y.tab.c" /* yacc.c:1646  */
    break;

  case 9:
#line 136 "nova/parser.y" /* yacc.c:1646  */
    { assemble((yyvsp[0].value).value,(yyvsp[0].value).relmode); }
#line 1774 "y.tab.c" /* yacc.c:1646  */
    break;

  case 11:
#line 140 "nova/parser.y" /* yacc.c:1646  */
    {     
			if(cond){
				if( (yyvsp[-1].symbol)->flags & F_ASSIGNED ){
					if(pass==1)
						warn("label already defined; ignoring this definition");
				}else 
					doassign((yyvsp[-1].symbol), currentloc(), TOK_SYM, relmode, (yylsp[-1]).first_line);
			}
		}
#line 1788 "y.tab.c" /* yacc.c:1646  */
    break;

  case 17:
#line 155 "nova/parser.y" /* yacc.c:1646  */
    { }
#line 1794 "y.tab.c" /* yacc.c:1646  */
    break;

  case 18:
#line 156 "nova/parser.y" /* yacc.c:1646  */
    { assemble((yyvsp[0].valuel) >> 16,ABSOLUTE); assemble((yyvsp[0].valuel),ABSOLUTE); }
#line 1800 "y.tab.c" /* yacc.c:1646  */
    break;

  case 19:
#line 157 "nova/parser.y" /* yacc.c:1646  */
    { }
#line 1806 "y.tab.c" /* yacc.c:1646  */
    break;

  case 20:
#line 160 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = (yyvsp[0].value).value & 3; 
			if(cond && (yyvsp[0].value).value>3) fatal("no such accumulator"); }
#line 1813 "y.tab.c" /* yacc.c:1646  */
    break;

  case 21:
#line 163 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = 0; }
#line 1819 "y.tab.c" /* yacc.c:1646  */
    break;

  case 22:
#line 164 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = TWOAC_NOLOAD; DPUTS("-- saw #"); }
#line 1825 "y.tab.c" /* yacc.c:1646  */
    break;

  case 23:
#line 166 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = 0; }
#line 1831 "y.tab.c" /* yacc.c:1646  */
    break;

  case 24:
#line 167 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = (yyvsp[0].symbol)->value; DPRINTF("-- saw skip (%s)",(yyvsp[0].symbol)->name); }
#line 1837 "y.tab.c" /* yacc.c:1646  */
    break;

  case 25:
#line 169 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = indexseen = 0; }
#line 1843 "y.tab.c" /* yacc.c:1646  */
    break;

  case 26:
#line 170 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = (yyvsp[0].value).value & 3; 
				 indexseen = 1;
				 if(cond && (yyvsp[0].value).value>3) fatal("bad index");
				 DPRINTF("-- saw index = %o\n",(yyvsp[0].value).value); }
#line 1852 "y.tab.c" /* yacc.c:1646  */
    break;

  case 27:
#line 176 "nova/parser.y" /* yacc.c:1646  */
    { seenterm=1; }
#line 1858 "y.tab.c" /* yacc.c:1646  */
    break;

  case 28:
#line 177 "nova/parser.y" /* yacc.c:1646  */
    { /* special symbol: location counter */
				seenterm=1; (yyval.value).value = currentloc(); (yyval.value).relmode = relmode; }
#line 1865 "y.tab.c" /* yacc.c:1646  */
    break;

  case 29:
#line 179 "nova/parser.y" /* yacc.c:1646  */
    { inputradix = radix; }
#line 1871 "y.tab.c" /* yacc.c:1646  */
    break;

  case 30:
#line 179 "nova/parser.y" /* yacc.c:1646  */
    { seenterm=1; DPUTS(" () "); (yyval.value) = (yyvsp[-1].value); }
#line 1877 "y.tab.c" /* yacc.c:1646  */
    break;

  case 31:
#line 180 "nova/parser.y" /* yacc.c:1646  */
    { seenterm=1; DPUTS(" (negate)"); 
				(yyval.value).value = - (yyvsp[0].value).value; 
				(yyval.value).relmode = (yyvsp[0].value).relmode; 
				if((yyvsp[0].value).relmode != ABSOLUTE) badreloc("-"); }
#line 1886 "y.tab.c" /* yacc.c:1646  */
    break;

  case 33:
#line 187 "nova/parser.y" /* yacc.c:1646  */
    { if(cond && pass==2 && !((yyvsp[0].symbol)->flags & F_ASSIGNED)) 
					fatal("undefined symbol");
				(yyval.value).value = (yyvsp[0].symbol)->value;
				(yyval.value).relmode = (yyvsp[0].symbol)->relmode; }
#line 1895 "y.tab.c" /* yacc.c:1646  */
    break;

  case 35:
#line 226 "nova/parser.y" /* yacc.c:1646  */
    { seenterm=0; inputradix = 10; }
#line 1901 "y.tab.c" /* yacc.c:1646  */
    break;

  case 36:
#line 226 "nova/parser.y" /* yacc.c:1646  */
    { 
				inputradix = radix; 
				(yyval.value).value = (yyvsp[-3].value).value << (15-(yyvsp[0].value).value); 
				(yyval.value).relmode = ABSOLUTE;
				if((yyvsp[-3].value).relmode != ABSOLUTE || (yyvsp[0].value).relmode != ABSOLUTE) 
					badreloc("B [both operands must be absolute]");
				if((yyvsp[0].value).value < 0 || (yyvsp[0].value).value > 15)
					warn("bit alignment value not in range 0-15");
				DPUTS(" (bit align) "); 
			}
#line 1916 "y.tab.c" /* yacc.c:1646  */
    break;

  case 37:
#line 236 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 1922 "y.tab.c" /* yacc.c:1646  */
    break;

  case 38:
#line 236 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-3].value).value + (yyvsp[0].value).value; 
				if((yyvsp[-3].value).relmode == ABSOLUTE && (yyvsp[0].value).relmode == ABSOLUTE)
					(yyval.value).relmode = ABSOLUTE;
				else if((yyvsp[-3].value).relmode == ABSOLUTE && ISRELOC((yyvsp[0].value).relmode))
					(yyval.value).relmode = (yyvsp[0].value).relmode;
				else if(ISRELOC((yyvsp[-3].value).relmode) && (yyvsp[0].value).relmode == ABSOLUTE)
					(yyval.value).relmode = (yyvsp[-3].value).relmode;
				else if((yyvsp[-3].value).relmode == NORMAL_REL && (yyvsp[0].value).relmode == NORMAL_REL)
					(yyval.value).relmode = NORMAL_BYTE_REL;
				else if((yyvsp[-3].value).relmode == PAGE_ZERO_REL && (yyvsp[0].value).relmode == PAGE_ZERO_REL)
					(yyval.value).relmode = PAGE_ZERO_BYTE_REL;
				else badreloc("+");
				DPUTS(" (add) "); }
#line 1941 "y.tab.c" /* yacc.c:1646  */
    break;

  case 39:
#line 250 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 1947 "y.tab.c" /* yacc.c:1646  */
    break;

  case 40:
#line 250 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-3].value).value - (yyvsp[0].value).value; 
				if( ((yyvsp[-3].value).relmode == ABSOLUTE || ISRELOC((yyvsp[-3].value).relmode))
						 && (yyvsp[0].value).relmode == (yyvsp[-3].value).relmode )
					(yyval.value).relmode = ABSOLUTE;
				else if(ISRELOC((yyvsp[-3].value).relmode) && (yyvsp[0].value).relmode == ABSOLUTE)
					(yyval.value).relmode = (yyvsp[-3].value).relmode;
				else badreloc("-");
				DPUTS(" (subtract) "); }
#line 1961 "y.tab.c" /* yacc.c:1646  */
    break;

  case 41:
#line 259 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 1967 "y.tab.c" /* yacc.c:1646  */
    break;

  case 42:
#line 259 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-3].value).value * (yyvsp[0].value).value; 
				if((yyvsp[-3].value).relmode == ABSOLUTE){
					if((yyvsp[0].value).relmode == ABSOLUTE) (yyval.value).relmode = ABSOLUTE;
					else if((yyvsp[-3].value).value==1) (yyval.value).relmode = (yyvsp[0].value).relmode;
					else if((yyvsp[0].value).relmode == NORMAL_REL && (yyvsp[-3].value).value==2)
						(yyval.value).relmode = NORMAL_BYTE_REL;
					else if((yyvsp[0].value).relmode == PAGE_ZERO_REL && (yyvsp[-3].value).value==2)
						(yyval.value).relmode = PAGE_ZERO_BYTE_REL;
					else badreloc("* [unsuitable reloc for second operand]");
				}else if((yyvsp[0].value).relmode == ABSOLUTE){
					if((yyvsp[-3].value).relmode == ABSOLUTE) (yyval.value).relmode = ABSOLUTE;
					else if((yyvsp[0].value).value==1) (yyval.value).relmode = (yyvsp[-3].value).relmode;
					else if((yyvsp[-3].value).relmode == NORMAL_REL && (yyvsp[0].value).value==2)
						(yyval.value).relmode = NORMAL_BYTE_REL;
					else if((yyvsp[-3].value).relmode == PAGE_ZERO_REL && (yyvsp[0].value).value==2)
						(yyval.value).relmode = PAGE_ZERO_BYTE_REL;
					else badreloc("* [unsuitable reloc for first operand]");
				}else badreloc("* [neither operand is absolute]");
				DPUTS(" (multiply) "); 
				}
#line 1993 "y.tab.c" /* yacc.c:1646  */
    break;

  case 43:
#line 280 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 1999 "y.tab.c" /* yacc.c:1646  */
    break;

  case 44:
#line 280 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-3].value).value / (yyvsp[0].value).value; 
				if((yyvsp[-3].value).relmode == ABSOLUTE && (yyvsp[0].value).relmode == ABSOLUTE)
					(yyval.value).relmode = ABSOLUTE;
				else badreloc("/ [both operands must be absolute]");
				DPUTS(" (divide) "); }
#line 2010 "y.tab.c" /* yacc.c:1646  */
    break;

  case 45:
#line 286 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 2016 "y.tab.c" /* yacc.c:1646  */
    break;

  case 46:
#line 286 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-3].value).value & (yyvsp[0].value).value;
				if((yyvsp[-3].value).relmode == ABSOLUTE && (yyvsp[0].value).relmode == ABSOLUTE)
					(yyval.value).relmode = ABSOLUTE;
				else badreloc("& [both operands must be absolute]");
				DPUTS(" (logical AND) "); }
#line 2027 "y.tab.c" /* yacc.c:1646  */
    break;

  case 47:
#line 292 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 2033 "y.tab.c" /* yacc.c:1646  */
    break;

  case 48:
#line 292 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-3].value).value | (yyvsp[0].value).value;
				if((yyvsp[-3].value).relmode == ABSOLUTE && (yyvsp[0].value).relmode == ABSOLUTE)
					(yyval.value).relmode = ABSOLUTE;
				else badreloc("! [both operands must be absolute]");
				DPUTS(" (logical OR) "); }
#line 2044 "y.tab.c" /* yacc.c:1646  */
    break;

  case 49:
#line 298 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 2050 "y.tab.c" /* yacc.c:1646  */
    break;

  case 50:
#line 298 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = ((yyvsp[-3].value).value == (yyvsp[0].value).value) && ((yyvsp[-3].value).relmode == (yyvsp[0].value).relmode);
				(yyval.value).relmode = ABSOLUTE;
				DPUTS(" (==) "); }
#line 2059 "y.tab.c" /* yacc.c:1646  */
    break;

  case 51:
#line 302 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 2065 "y.tab.c" /* yacc.c:1646  */
    break;

  case 52:
#line 302 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = ((yyvsp[-3].value).value >= (yyvsp[0].value).value) && ((yyvsp[-3].value).relmode == (yyvsp[0].value).relmode);
				(yyval.value).relmode = ABSOLUTE;
				DPUTS(" (>=) "); }
#line 2074 "y.tab.c" /* yacc.c:1646  */
    break;

  case 53:
#line 306 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 2080 "y.tab.c" /* yacc.c:1646  */
    break;

  case 54:
#line 306 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = ((yyvsp[-3].value).value > (yyvsp[0].value).value) && ((yyvsp[-3].value).relmode == (yyvsp[0].value).relmode);
				(yyval.value).relmode = ABSOLUTE;
				DPUTS(" (>) "); }
#line 2089 "y.tab.c" /* yacc.c:1646  */
    break;

  case 55:
#line 310 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 2095 "y.tab.c" /* yacc.c:1646  */
    break;

  case 56:
#line 310 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = ((yyvsp[-3].value).value < (yyvsp[0].value).value) && ((yyvsp[-3].value).relmode == (yyvsp[0].value).relmode);
				(yyval.value).relmode = ABSOLUTE;
				DPUTS(" (<) "); }
#line 2104 "y.tab.c" /* yacc.c:1646  */
    break;

  case 57:
#line 314 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 2110 "y.tab.c" /* yacc.c:1646  */
    break;

  case 58:
#line 314 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = ((yyvsp[-3].value).value < (yyvsp[0].value).value) && ((yyvsp[-3].value).relmode == (yyvsp[0].value).relmode);
				(yyval.value).relmode = ABSOLUTE;
				DPUTS(" (<=) "); }
#line 2119 "y.tab.c" /* yacc.c:1646  */
    break;

  case 59:
#line 318 "nova/parser.y" /* yacc.c:1646  */
    {seenterm=0;}
#line 2125 "y.tab.c" /* yacc.c:1646  */
    break;

  case 60:
#line 318 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = ((yyvsp[-3].value).value != (yyvsp[0].value).value) || ((yyvsp[-3].value).relmode != (yyvsp[0].value).relmode);
				(yyval.value).relmode = ABSOLUTE;
				DPUTS(" (<>) "); }
#line 2134 "y.tab.c" /* yacc.c:1646  */
    break;

  case 61:
#line 323 "nova/parser.y" /* yacc.c:1646  */
    { seenterm = 0; }
#line 2140 "y.tab.c" /* yacc.c:1646  */
    break;

  case 62:
#line 326 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value) = (yyvsp[-1].value);
				(yyval.value).value = ea((yyvsp[0].value).value,indexseen,&((yyval.value))); }
#line 2148 "y.tab.c" /* yacc.c:1646  */
    break;

  case 63:
#line 330 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-1].symbol)->value | (yyvsp[0].value).value; 
				(yyval.value).relmode = (yyvsp[0].value).relmode; }
#line 2156 "y.tab.c" /* yacc.c:1646  */
    break;

  case 64:
#line 334 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-3].symbol)->value | ((yyvsp[-2].value).value<<11) | (yyvsp[0].value).value; 
				(yyval.value).relmode = (yyvsp[0].value).relmode; }
#line 2164 "y.tab.c" /* yacc.c:1646  */
    break;

  case 65:
#line 339 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = (yyvsp[-5].symbol)->value | (yyvsp[-4].value).value | ((yyvsp[-3].value).value<<13) | ((yyvsp[-1].value).value<<11) | (yyvsp[0].value).value;
		  if((yyvsp[-4].value).value && !(yyvsp[0].value).value)
			warn("invalid instruction for Nova 3 ('no load' & 'never skip')");
		  (yyval.value).relmode = ABSOLUTE; /* ALC instruction; no address to relocate! */
		  DPRINTF("2AC %#o acs=%o acd=%o\n",(yyvsp[-5].symbol)->value,(yyvsp[-3].value).value,(yyvsp[-1].value).value); }
#line 2174 "y.tab.c" /* yacc.c:1646  */
    break;

  case 66:
#line 345 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = 0; }
#line 2180 "y.tab.c" /* yacc.c:1646  */
    break;

  case 68:
#line 347 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = ((yyvsp[-2].value).value<<11) | (yyvsp[0].value).value; }
#line 2186 "y.tab.c" /* yacc.c:1646  */
    break;

  case 69:
#line 349 "nova/parser.y" /* yacc.c:1646  */
    { 
				(yyval.value).value = (yyvsp[-1].symbol)->value | (yyvsp[0].value).value; 
				(yyval.value).relmode = ABSOLUTE; /* no address encoded in I/O instr */ }
#line 2194 "y.tab.c" /* yacc.c:1646  */
    break;

  case 70:
#line 354 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = (yyvsp[-5].symbol)->value | ((yyvsp[-4].value).value<<13) | ((yyvsp[-2].value).value<<11) | ((yyvsp[0].value).value<<4);
		  (yyval.value).relmode = ABSOLUTE;
		  DPRINTF("TRAP %#o acs=%o acd=%o trap=%#o\n",(yyvsp[-5].symbol)->value,(yyvsp[-4].value).value,(yyvsp[-2].value).value,(yyvsp[0].value).value); }
#line 2202 "y.tab.c" /* yacc.c:1646  */
    break;

  case 71:
#line 359 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = indirect ? (yyvsp[0].value).value | INDIR_DATA : (yyvsp[0].value).value; }
#line 2208 "y.tab.c" /* yacc.c:1646  */
    break;

  case 72:
#line 360 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = indirect ? (yyvsp[0].value).value | NOAC_INDIRECT : (yyvsp[0].value).value; }
#line 2214 "y.tab.c" /* yacc.c:1646  */
    break;

  case 73:
#line 361 "nova/parser.y" /* yacc.c:1646  */
    { (yyval.value).value = indirect ? (yyvsp[0].value).value | NOAC_INDIRECT : (yyvsp[0].value).value; }
#line 2220 "y.tab.c" /* yacc.c:1646  */
    break;

  case 78:
#line 367 "nova/parser.y" /* yacc.c:1646  */
    { 
		if(bootprog)
			ignoring("END <start-loc>");
		else if(cond) 
			rbexpr(START_BLK,(yyvsp[0].value).value,(yyvsp[0].value).relmode); 
		}
#line 2231 "y.tab.c" /* yacc.c:1646  */
    break;

  case 79:
#line 375 "nova/parser.y" /* yacc.c:1646  */
    { symlist[nsyms++] = (yyvsp[0].symbol); }
#line 2237 "y.tab.c" /* yacc.c:1646  */
    break;

  case 80:
#line 376 "nova/parser.y" /* yacc.c:1646  */
    { symlist[nsyms++] = (yyvsp[0].symbol); }
#line 2243 "y.tab.c" /* yacc.c:1646  */
    break;

  case 85:
#line 382 "nova/parser.y" /* yacc.c:1646  */
    { 
		/* define an ALC instruction or expression */
		if(cond) dalc((yyvsp[-2].symbol),(yyvsp[0].value).value,(yylsp[-2]).first_line); }
#line 2251 "y.tab.c" /* yacc.c:1646  */
    break;

  case 86:
#line 385 "nova/parser.y" /* yacc.c:1646  */
    {
		/* define an instruction requiring an accumulator */
		if(cond) doassign((yyvsp[-2].symbol),(yyvsp[0].value).value,TOK_ONEAC,0,(yylsp[-2]).first_line); }
#line 2259 "y.tab.c" /* yacc.c:1646  */
    break;

  case 87:
#line 388 "nova/parser.y" /* yacc.c:1646  */
    { 
		/* define an I/O instruction that does not use an accumulator */
		if(cond) dio((yyvsp[-2].symbol),(yyvsp[0].value).value,(yylsp[-2]).first_line); }
#line 2267 "y.tab.c" /* yacc.c:1646  */
    break;

  case 88:
#line 391 "nova/parser.y" /* yacc.c:1646  */
    { 
		/* define an I/O instruction having two required fields */
		if(cond) dio((yyvsp[-2].symbol),(yyvsp[0].value).value,(yylsp[-2]).first_line); }
#line 2275 "y.tab.c" /* yacc.c:1646  */
    break;

  case 89:
#line 394 "nova/parser.y" /* yacc.c:1646  */
    { 
		/* define an instruction with source and destination accumulators, no skip */
		if(cond) doassign((yyvsp[-2].symbol),(yyvsp[0].value).value,TOK_TWOAC,0,(yylsp[-2]).first_line); }
#line 2283 "y.tab.c" /* yacc.c:1646  */
    break;

  case 90:
#line 397 "nova/parser.y" /* yacc.c:1646  */
    { 
		/* define an instruction with source and destination accumulators allowing skip */
		if(cond) doassign((yyvsp[-2].symbol),(yyvsp[0].value).value,TOK_TWOAC,0,(yylsp[-2]).first_line); }
#line 2291 "y.tab.c" /* yacc.c:1646  */
    break;

  case 91:
#line 400 "nova/parser.y" /* yacc.c:1646  */
    { 
		/* define a memory reference instruction with displacement and index */
		if(cond) doassign((yyvsp[-2].symbol),(yyvsp[0].value).value,TOK_NOAC,0,(yylsp[-2]).first_line); }
#line 2299 "y.tab.c" /* yacc.c:1646  */
    break;

  case 92:
#line 403 "nova/parser.y" /* yacc.c:1646  */
    { 
		/* define a memory reference instruction with 2 or 3 fields */
		if(cond) doassign((yyvsp[-2].symbol),(yyvsp[0].value).value,TOK_NOAC,0,(yylsp[-2]).first_line); }
#line 2307 "y.tab.c" /* yacc.c:1646  */
    break;

  case 93:
#line 406 "nova/parser.y" /* yacc.c:1646  */
    { 
		/* define a user symbol without implied formatting */
		if(cond) doassign((yyvsp[-2].symbol),(yyvsp[0].value).value,TOK_SYM,ABSOLUTE /*??*/,(yylsp[-2]).first_line); }
#line 2315 "y.tab.c" /* yacc.c:1646  */
    break;

  case 94:
#line 409 "nova/parser.y" /* yacc.c:1646  */
    { if(cond) clean_syms(); }
#line 2321 "y.tab.c" /* yacc.c:1646  */
    break;

  case 95:
#line 411 "nova/parser.y" /* yacc.c:1646  */
    { /* reserve a block of storage */ 
				if(bootprog) ignoring("BLK");
				else if(cond){
					flushrb(); 
					switch(relmode){
					case ABSOLUTE: curloc += (yyvsp[0].value).value; break;
					case NORMAL_REL: nrel_loc += (yyvsp[0].value).value; break; 
					case PAGE_ZERO_REL: zrel_loc += (yyvsp[0].value).value; break;
					}
				}
		}
#line 2337 "y.tab.c" /* yacc.c:1646  */
    break;

  case 96:
#line 422 "nova/parser.y" /* yacc.c:1646  */
    { /* specify NREL code relocation */
			if(bootprog) ignoring("NREL");
			else if(cond && relmode != NORMAL_REL){ flushrb(); relmode = NORMAL_REL; } 
		}
#line 2346 "y.tab.c" /* yacc.c:1646  */
    break;

  case 97:
#line 426 "nova/parser.y" /* yacc.c:1646  */
    { /* specify page zero relocation */
			if(bootprog) ignoring("ZREL");
			else if(cond && relmode != PAGE_ZERO_REL){ flushrb(); relmode = PAGE_ZERO_REL; }
		}
#line 2355 "y.tab.c" /* yacc.c:1646  */
    break;

  case 98:
#line 430 "nova/parser.y" /* yacc.c:1646  */
    { /* set the current location counter, to an absolute address */
			if(bootprog) ignoring("LOC");
			else if(cond){ flushrb(); relmode = ABSOLUTE; curloc = (yyvsp[0].value).value; }
		}
#line 2364 "y.tab.c" /* yacc.c:1646  */
    break;

  case 99:
#line 435 "nova/parser.y" /* yacc.c:1646  */
    { /* reserve a named common area */ 
		if(bootprog) ignoring("COMM");
		else if(cond) rbcomm((yyvsp[-2].symbol),(yyvsp[0].value).value,(yyvsp[0].value).relmode);
		}
#line 2373 "y.tab.c" /* yacc.c:1646  */
    break;

  case 100:
#line 439 "nova/parser.y" /* yacc.c:1646  */
    { /* specify an unlabelled common area */ 
		if(bootprog) ignoring("CSIZ");
		else if(cond) rbexpr(CSIZ_BLK,(yyvsp[0].value).value,(yyvsp[0].value).relmode); 
		}
#line 2382 "y.tab.c" /* yacc.c:1646  */
    break;

  case 101:
#line 443 "nova/parser.y" /* yacc.c:1646  */
    { nsyms=0; }
#line 2388 "y.tab.c" /* yacc.c:1646  */
    break;

  case 102:
#line 443 "nova/parser.y" /* yacc.c:1646  */
    { /* define a program entry */ 
		if(bootprog) ignoring("ENT");
		else if(cond) rbsymlist(ENT_BLK,ENTRY_SYM,symlist,nsyms); 
		}
#line 2397 "y.tab.c" /* yacc.c:1646  */
    break;

  case 103:
#line 447 "nova/parser.y" /* yacc.c:1646  */
    { /* define an overlay entry */
		symlist[0] = (yyvsp[0].symbol);
		if(bootprog) ignoring("ENTO");
		else if(cond) rbsymlist(ENT_BLK,OVERLAY_SYM,symlist,1); 
		}
#line 2407 "y.tab.c" /* yacc.c:1646  */
    break;

  case 104:
#line 452 "nova/parser.y" /* yacc.c:1646  */
    { nsyms=0; }
#line 2413 "y.tab.c" /* yacc.c:1646  */
    break;

  case 105:
#line 452 "nova/parser.y" /* yacc.c:1646  */
    { /* define an external displacement reference */
		if(bootprog) ignoring("EXTD");
		else if(cond) rbsymlist(EXTD_BLK,EXT_DISP_SYM,symlist,nsyms); 
		}
#line 2422 "y.tab.c" /* yacc.c:1646  */
    break;

  case 106:
#line 456 "nova/parser.y" /* yacc.c:1646  */
    { nsyms=0; }
#line 2428 "y.tab.c" /* yacc.c:1646  */
    break;

  case 107:
#line 456 "nova/parser.y" /* yacc.c:1646  */
    { /* define an external normal reference */
		if(bootprog) ignoring("EXTN");
		else if(cond) rbsymlist(EXTN_BLK,NORMAL_EXT_SYM,symlist,nsyms); 
		}
#line 2437 "y.tab.c" /* yacc.c:1646  */
    break;

  case 108:
#line 461 "nova/parser.y" /* yacc.c:1646  */
    { /* add an expression value to an external symbol */ 
		if(bootprog) ignoring("GADD");
		else if(cond) rbgadd(GADD_BLK,(yyvsp[-2].symbol),(yyvsp[0].value).value,(yyvsp[0].value).relmode);
		}
#line 2446 "y.tab.c" /* yacc.c:1646  */
    break;

  case 109:
#line 465 "nova/parser.y" /* yacc.c:1646  */
    { /* add an expression value to an external symbol (0b0) */
		if(bootprog) ignoring("GREF");
		else if(cond) rbgadd(GREF_BLK,(yyvsp[-2].symbol),(yyvsp[0].value).value,(yyvsp[0].value).relmode);
		}
#line 2455 "y.tab.c" /* yacc.c:1646  */
    break;

  case 110:
#line 471 "nova/parser.y" /* yacc.c:1646  */
    { popcond(); }
#line 2461 "y.tab.c" /* yacc.c:1646  */
    break;

  case 111:
#line 472 "nova/parser.y" /* yacc.c:1646  */
    { pushcond((yyvsp[0].value).value == 0); /* assemble if expr = 0 */ }
#line 2467 "y.tab.c" /* yacc.c:1646  */
    break;

  case 112:
#line 473 "nova/parser.y" /* yacc.c:1646  */
    { pushcond((yyvsp[0].value).value > 0);  /* assemble if expr > 0 */ }
#line 2473 "y.tab.c" /* yacc.c:1646  */
    break;

  case 113:
#line 474 "nova/parser.y" /* yacc.c:1646  */
    { pushcond((yyvsp[0].value).value < 0);  /* assemble if expr < 0 */ }
#line 2479 "y.tab.c" /* yacc.c:1646  */
    break;

  case 114:
#line 475 "nova/parser.y" /* yacc.c:1646  */
    { pushcond((yyvsp[0].value).value != 0); /* assemble if expr != 0 */ }
#line 2485 "y.tab.c" /* yacc.c:1646  */
    break;

  case 115:
#line 477 "nova/parser.y" /* yacc.c:1646  */
    { DPUTS("TXT directive"); }
#line 2491 "y.tab.c" /* yacc.c:1646  */
    break;

  case 116:
#line 478 "nova/parser.y" /* yacc.c:1646  */
    { if(cond) txtm = (yyvsp[0].value).value; /* change text byte packing */ }
#line 2497 "y.tab.c" /* yacc.c:1646  */
    break;

  case 117:
#line 479 "nova/parser.y" /* yacc.c:1646  */
    { if(cond) txtn = (yyvsp[0].value).value; /* determine text string termination */ }
#line 2503 "y.tab.c" /* yacc.c:1646  */
    break;

  case 118:
#line 482 "nova/parser.y" /* yacc.c:1646  */
    { /* radix for numeric input conversion */ 
			saveradix = radix; inputradix = 10; }
#line 2510 "y.tab.c" /* yacc.c:1646  */
    break;

  case 119:
#line 484 "nova/parser.y" /* yacc.c:1646  */
    { radix = saveradix; 
			if((yyvsp[0].value).value < 2 || (yyvsp[0].value).value > 20)
				warn("invalid input radix; must be >=2 and <=20");
			else 
				if(cond) radix = inputradix = (yyvsp[0].value).value; 
		}
#line 2521 "y.tab.c" /* yacc.c:1646  */
    break;

  case 120:
#line 491 "nova/parser.y" /* yacc.c:1646  */
    { /* entitle an RB file */ 
		if(bootprog) ignoring("TITL");
		else if(cond) rbtitle((yyvsp[0].symbol)); }
#line 2529 "y.tab.c" /* yacc.c:1646  */
    break;

  case 121:
#line 496 "nova/parser.y" /* yacc.c:1646  */
    { if(cond){ endflag = 1; YYACCEPT; } /* end of program */ }
#line 2535 "y.tab.c" /* yacc.c:1646  */
    break;

  case 122:
#line 497 "nova/parser.y" /* yacc.c:1646  */
    { if(cond) YYACCEPT; }
#line 2541 "y.tab.c" /* yacc.c:1646  */
    break;

  case 123:
#line 498 "nova/parser.y" /* yacc.c:1646  */
    { if(cond) YYACCEPT; }
#line 2547 "y.tab.c" /* yacc.c:1646  */
    break;


#line 2551 "y.tab.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;
  *++yylsp = yyloc;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }

  yyerror_range[1] = yylloc;

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval, &yylloc);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  yyerror_range[1] = yylsp[1-yylen];
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;

      yyerror_range[1] = *yylsp;
      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp, yylsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  yyerror_range[2] = yylloc;
  /* Using YYLLOC is tempting, but would change the location of
     the lookahead.  YYLOC is available though.  */
  YYLLOC_DEFAULT (yyloc, yyerror_range, 2);
  *++yylsp = yyloc;

  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval, &yylloc);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp, yylsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 501 "nova/parser.y" /* yacc.c:1906  */

