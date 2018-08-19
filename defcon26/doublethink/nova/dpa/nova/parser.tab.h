/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

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
#line 88 "nova/parser.y" /* yacc.c:1909  */

	struct operand value;
	unsigned long valuel;
	struct sym_rec *symbol;
	char *string;

#line 197 "y.tab.h" /* yacc.c:1909  */
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
