
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR
    | TYPE
    | TO
    | TIMES
    | THEN
    | STRING of (
# 10 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | SEMICOLON
    | RPAREN
    | RBRACK
    | RBRACE
    | PLUS
    | OR
    | OF
    | NIL
    | NEQ
    | MINUS
    | LT
    | LPAREN
    | LET
    | LE
    | LBRACK
    | LBRACE
    | INT of (
# 9 "parser.mly"
       (int)
# 38 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 8 "parser.mly"
       (string)
# 45 "parser.ml"
  )
    | GT
    | GE
    | FUNCTION
    | FOR
    | EQ
    | EOF
    | END
    | ELSE
    | DOT
    | DO
    | DIVIDE
    | COMMA
    | COLON
    | BREAK
    | ASSIGN
    | ARRAY
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState123
  | MenhirState115
  | MenhirState113
  | MenhirState111
  | MenhirState107
  | MenhirState102
  | MenhirState99
  | MenhirState95
  | MenhirState92
  | MenhirState80
  | MenhirState75
  | MenhirState70
  | MenhirState67
  | MenhirState65
  | MenhirState62
  | MenhirState56
  | MenhirState54
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState26
  | MenhirState21
  | MenhirState18
  | MenhirState16
  | MenhirState15
  | MenhirState10
  | MenhirState9
  | MenhirState8
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 1 "parser.mly"
  
  module A = Ast.Absyn
  module S = Ast.Symbol

# 126 "parser.ml"

let rec _menhir_goto_nonempty_list_dec_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_dec_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv493 * _menhir_state * Lexing.position) * _menhir_state * 'tv_nonempty_list_dec_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv489 * _menhir_state * Lexing.position) * _menhir_state * 'tv_nonempty_list_dec_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv491 * _menhir_state * Lexing.position) * _menhir_state * 'tv_nonempty_list_dec_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)) : 'freshtv494)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state * 'tv_dec) * _menhir_state * 'tv_nonempty_list_dec_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv495 * _menhir_state * 'tv_dec) * _menhir_state * 'tv_nonempty_list_dec_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_dec)), _, (xs : 'tv_nonempty_list_dec_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_dec_ = 
# 223 "<standard.mly>"
    ( x :: xs )
# 186 "parser.ml"
         in
        _menhir_goto_nonempty_list_dec_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)) : 'freshtv498)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_tydec_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_tydec_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_tydec) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_tydec_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_tydec) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_tydec_) : 'tv_nonempty_list_tydec_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_tydec)) = _menhir_stack in
        let _v : 'tv_nonempty_list_tydec_ = 
# 223 "<standard.mly>"
    ( x :: xs )
# 208 "parser.ml"
         in
        _menhir_goto_nonempty_list_tydec_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)) : 'freshtv484)
    | MenhirState115 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_tydec_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((tydecs : 'tv_nonempty_list_tydec_) : 'tv_nonempty_list_tydec_) = _v in
        ((let _v : 'tv_dec = 
# 221 "parser.mly"
                                   ( A.TypeDec (tydecs) )
# 223 "parser.ml"
         in
        _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_tyfield__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv459) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv455) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv453) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ty = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 251 "parser.ml"
             in
            
# 240 "parser.mly"
      ( A.RecordTy (type_fields) )
# 256 "parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv454)) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv457) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv479 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 271 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv475 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 281 "parser.ml"
            ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv469 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 291 "parser.ml"
                ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv465 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 301 "parser.ml"
                    ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
                    let (_v : (
# 8 "parser.mly"
       (string)
# 306 "parser.ml"
                    )) = _v in
                    let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQ ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((((('freshtv461 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 318 "parser.ml"
                        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 8 "parser.mly"
       (string)
# 322 "parser.ml"
                        ) * Lexing.position) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BREAK ->
                            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | FOR ->
                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | ID _v ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IF ->
                            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | INT _v ->
                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LET ->
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LPAREN ->
                            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | MINUS ->
                            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NIL ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | STRING _v ->
                            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | WHILE ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv462)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((((('freshtv463 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 360 "parser.ml"
                        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 8 "parser.mly"
       (string)
# 364 "parser.ml"
                        ) * Lexing.position) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv467 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 375 "parser.ml"
                    ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv471 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 384 "parser.ml"
                ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FOR ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | ID _v ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MINUS ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NIL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv472)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv473 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 422 "parser.ml"
                ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv477 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 433 "parser.ml"
            ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_tyfield_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_tyfield_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_tyfield_) : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_tyfield)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_tyfield_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 457 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_tyfield_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)) : 'freshtv448)
    | MenhirState92 | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_tyfield_) : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_tyfield__ = 
# 144 "<standard.mly>"
    ( x )
# 472 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
    | _ ->
        _menhir_fail ()

and _menhir_reduce14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (v : 'tv_lvalue), _startpos_v_) = _menhir_stack in
    let _startpos = _startpos_v_ in
    let _v : 'tv_exp_basic = 
# 36 "parser.mly"
               ( A.VarExp v )
# 485 "parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run8 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv441 * _menhir_state * 'tv_lvalue * Lexing.position)) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "parser.mly"
       (string)
# 532 "parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv439 * _menhir_state * 'tv_lvalue * Lexing.position)) = Obj.magic _menhir_stack in
        let ((i : (
# 8 "parser.mly"
       (string)
# 541 "parser.ml"
        )) : (
# 8 "parser.mly"
       (string)
# 545 "parser.ml"
        )) = _v in
        let (_startpos_i_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, (v : 'tv_lvalue), _startpos_v_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_v_ in
        let _v : 'tv_lvalue = let _startpos = _startpos_v_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 206 "parser.mly"
      ( (A.FieldVar (v, S.symbol i, _startofs)) )
# 556 "parser.ml"
         in
        _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv440)) : 'freshtv442)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv443 * _menhir_state * 'tv_lvalue * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)

and _menhir_goto_nonempty_list_fundec_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_fundec_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState115 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_fundec_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((fundecs : 'tv_nonempty_list_fundec_) : 'tv_nonempty_list_fundec_) = _v in
        ((let _v : 'tv_dec = 
# 223 "parser.mly"
                                    ( A.FunctionDec (fundecs) )
# 582 "parser.ml"
         in
        _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)) : 'freshtv434)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_fundec) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_fundec_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_fundec) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_fundec_) : 'tv_nonempty_list_fundec_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_fundec)) = _menhir_stack in
        let _v : 'tv_nonempty_list_fundec_ = 
# 223 "<standard.mly>"
    ( x :: xs )
# 598 "parser.ml"
         in
        _menhir_goto_nonempty_list_fundec_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)) : 'freshtv438)
    | _ ->
        _menhir_fail ()

and _menhir_goto_dec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_dec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv429 * _menhir_state * 'tv_dec) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_dec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_dec)) = _menhir_stack in
        let _v : 'tv_nonempty_list_dec_ = 
# 221 "<standard.mly>"
    ( [ x ] )
# 625 "parser.ml"
         in
        _menhir_goto_nonempty_list_dec_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv430)

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv425 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 639 "parser.ml"
    ) * Lexing.position)) = Obj.magic _menhir_stack in
    let (_v : 'tv_ty) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv423 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 646 "parser.ml"
    ) * Lexing.position)) = Obj.magic _menhir_stack in
    let ((type_def : 'tv_ty) : 'tv_ty) = _v in
    ((let ((_menhir_stack, _menhir_s, _startpos__1_), (type_id : (
# 8 "parser.mly"
       (string)
# 652 "parser.ml"
    )), _startpos_type_id_) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : 'tv_tydec = let _startpos = _startpos__1_ in
    let _startofs = _startpos.Lexing.pos_cnum in
    
# 228 "parser.mly"
      ( 
        {
          name= S.symbol type_id;
          ty= type_def;
          pos= _startofs;
        }
      )
# 667 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv421) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_tydec) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv419 * _menhir_state * 'tv_tydec) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TYPE ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUNCTION | IN | VAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state * 'tv_tydec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_tydec)) = _menhir_stack in
        let _v : 'tv_nonempty_list_tydec_ = 
# 221 "<standard.mly>"
    ( [ x ] )
# 688 "parser.ml"
         in
        _menhir_goto_nonempty_list_tydec_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv420)) : 'freshtv422)) : 'freshtv424)) : 'freshtv426)

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_tyfield__ = 
# 142 "<standard.mly>"
    ( [] )
# 701 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (string)
# 708 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 720 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv409 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 730 "parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_v : (
# 8 "parser.mly"
       (string)
# 735 "parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv407 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 743 "parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let ((type_id : (
# 8 "parser.mly"
       (string)
# 748 "parser.ml"
            )) : (
# 8 "parser.mly"
       (string)
# 752 "parser.ml"
            )) = _v in
            let (_startpos_type_id_ : Lexing.position) = _startpos in
            ((let (_menhir_stack, _menhir_s, (field_id : (
# 8 "parser.mly"
       (string)
# 758 "parser.ml"
            )), _startpos_field_id_) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_tyfield = let _startpos = _startpos_field_id_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 246 "parser.mly"
      (
        ({
          name= S.symbol field_id;
          escape= true;
          typ= S.symbol type_id;
          pos= _startofs
        })
      )
# 773 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv405) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tyfield) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv398)
            | RBRACE | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv399 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_tyfield)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_tyfield_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 804 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_tyfield_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)) : 'freshtv406)) : 'freshtv408)) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv411 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 821 "parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 832 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_lvalue : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState50 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LBRACK ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIVIDE | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
    | MenhirState0 | MenhirState123 | MenhirState1 | MenhirState8 | MenhirState9 | MenhirState111 | MenhirState107 | MenhirState99 | MenhirState95 | MenhirState70 | MenhirState15 | MenhirState67 | MenhirState65 | MenhirState16 | MenhirState62 | MenhirState18 | MenhirState56 | MenhirState54 | MenhirState26 | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv392)
        | DOT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LBRACK ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIVIDE | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expseq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expseq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv373 * _menhir_state * Lexing.position) * _menhir_state * 'tv_nonempty_list_dec_)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv369 * _menhir_state * Lexing.position) * _menhir_state * 'tv_nonempty_list_dec_)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv367 * _menhir_state * Lexing.position) * _menhir_state * 'tv_nonempty_list_dec_)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (dec_lis : 'tv_nonempty_list_dec_)), _, (exps : 'tv_expseq)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _v : 'tv_exp = let _startpos = _startpos__1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 191 "parser.mly"
      (
        A.LetExp {
          decs= dec_lis;
          body= exps;
          pos= _startofs
        }
      )
# 1172 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv368)) : 'freshtv370)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv371 * _menhir_state * Lexing.position) * _menhir_state * 'tv_nonempty_list_dec_)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp), _startpos_e1_), _, (exps : 'tv_expseq)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expseq = let _startpos = _startpos_e1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 212 "parser.mly"
    ( match exps with
      | A.SeqExp es -> A.SeqExp ((e1,_startofs)::es)
      | _ -> assert false (* impossible expseq *)
    )
# 1197 "parser.ml"
         in
        _menhir_goto_expseq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv385 * _menhir_state * Lexing.position) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv381 * _menhir_state * Lexing.position) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv379 * _menhir_state * Lexing.position) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (elis : 'tv_expseq)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _v : 'tv_exp = 
# 151 "parser.mly"
      ( elis )
# 1219 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv380)) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv383 * _menhir_state * Lexing.position) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fundec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fundec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_fundec) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN | TYPE | VAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_fundec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_fundec)) = _menhir_stack in
        let _v : 'tv_nonempty_list_fundec_ = 
# 221 "<standard.mly>"
    ( [ x ] )
# 1249 "parser.ml"
         in
        _menhir_goto_nonempty_list_fundec_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv366)

and _menhir_goto_vardec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_vardec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_vardec) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((vdec : 'tv_vardec) : 'tv_vardec) = _v in
    ((let _v : 'tv_dec = 
# 222 "parser.mly"
                  ( vdec )
# 1270 "parser.ml"
     in
    _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)

and _menhir_goto_separated_nonempty_list_COMMA_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_exp_) : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp__ = 
# 144 "<standard.mly>"
    ( x )
# 1289 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_exp_) : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_exp), _startpos_x_) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1306 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
    | _ ->
        _menhir_fail ()

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (string)
# 1315 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "parser.mly"
       (string)
# 1334 "parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1346 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv334)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv343 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1382 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv339 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1392 "parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                let (_v : (
# 8 "parser.mly"
       (string)
# 1397 "parser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ASSIGN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv335 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1409 "parser.ml"
                    ) * Lexing.position)) * (
# 8 "parser.mly"
       (string)
# 1413 "parser.ml"
                    ) * Lexing.position) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BREAK ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | FOR ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | ID _v ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IF ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INT _v ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LET ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | MINUS ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NIL ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | WHILE ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv336)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv337 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1451 "parser.ml"
                    ) * Lexing.position)) * (
# 8 "parser.mly"
       (string)
# 1455 "parser.ml"
                    ) * Lexing.position) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s, _), _, _), _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv341 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1466 "parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv345 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1477 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "parser.mly"
       (string)
# 1501 "parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv325 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1513 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv315) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | OF ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv311 * Lexing.position) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv307 * Lexing.position)) = Obj.magic _menhir_stack in
                        let (_v : (
# 8 "parser.mly"
       (string)
# 1538 "parser.ml"
                        )) = _v in
                        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv305 * Lexing.position)) = Obj.magic _menhir_stack in
                        let ((type_id : (
# 8 "parser.mly"
       (string)
# 1547 "parser.ml"
                        )) : (
# 8 "parser.mly"
       (string)
# 1551 "parser.ml"
                        )) = _v in
                        let (_startpos_type_id_ : Lexing.position) = _startpos in
                        ((let (_menhir_stack, _startpos__1_) = _menhir_stack in
                        let _2 = () in
                        let _1 = () in
                        let _v : 'tv_ty = let _startpos = _startpos__1_ in
                        let _startofs = _startpos.Lexing.pos_cnum in
                        
# 242 "parser.mly"
      ( A.ArrayTy (S.symbol type_id, _startofs ))
# 1562 "parser.ml"
                         in
                        _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv306)) : 'freshtv308)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv309 * Lexing.position)) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv310)) : 'freshtv312)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv313 * Lexing.position) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv314)) : 'freshtv316)
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
                let (_v : (
# 8 "parser.mly"
       (string)
# 1583 "parser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
                let ((type_id : (
# 8 "parser.mly"
       (string)
# 1592 "parser.ml"
                )) : (
# 8 "parser.mly"
       (string)
# 1596 "parser.ml"
                )) = _v in
                let (_startpos_type_id_ : Lexing.position) = _startpos in
                ((let _v : 'tv_ty = let _startpos = _startpos_type_id_ in
                let _startofs = _startpos.Lexing.pos_cnum in
                
# 238 "parser.mly"
      ( A.NameTy (S.symbol type_id, _startofs ) )
# 1604 "parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv318)) : 'freshtv320)
            | LBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv321) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RBRACE ->
                    _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv322)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv323 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1628 "parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv327 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1639 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "parser.mly"
       (string)
# 1663 "parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv297 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1675 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 1697 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv303 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)

and _menhir_goto_exp_basic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_basic -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState0 | MenhirState123 | MenhirState1 | MenhirState8 | MenhirState9 | MenhirState111 | MenhirState107 | MenhirState99 | MenhirState95 | MenhirState70 | MenhirState15 | MenhirState67 | MenhirState65 | MenhirState16 | MenhirState62 | MenhirState18 | MenhirState56 | MenhirState54 | MenhirState21 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv218)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp = 
# 133 "parser.mly"
                   ( e1 )
# 1769 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv227 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_e1_ in
        let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 62 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= TimesOp;
          right= e2;
          pos= _startofs
      } )
# 1797 "parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv226)) : 'freshtv228)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv229 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 48 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= PlusOp;
          right= e2;
          pos= _startofs
      } )
# 1826 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv230)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv231 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_e1_ in
        let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 69 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= DivideOp;
          right= e2;
          pos= _startofs
      } )
# 1854 "parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv236)) : 'freshtv238)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 118 "parser.mly"
      ( A.IfExp {
          test= e1;
          then'= IntExp 1;
          else'= Some e2;
          pos= _startofs
      } )
# 1901 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 83 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= NeqOp;
          right= e2;
          pos= _startofs
      } )
# 1941 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_exp_basic * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_exp_basic * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _startpos__2_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 55 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= MinusOp;
          right= e2;
          pos= _startofs
      } )
# 1977 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_exp_basic * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 90 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= LtOp;
          right= e2;
          pos= _startofs
      } )
# 2017 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 104 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= LeOp;
          right= e2;
          pos= _startofs
      } )
# 2057 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 97 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= GtOp;
          right= e2;
          pos= _startofs
      } )
# 2097 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 111 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= GeOp;
          right= e2;
          pos= _startofs
      } )
# 2137 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 76 "parser.mly"
      ( A.OpExp {
          left= e1;
          oper= EqOp;
          right= e2;
          pos= _startofs
      } )
# 2177 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 125 "parser.mly"
      ( A.IfExp {
          test= e1;
          then'= e2;
          else'= Some (IntExp 0);
          pos= _startofs
      } )
# 2229 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv295 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (e : 'tv_exp_basic), _startpos_e_) = _menhir_stack in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp_basic = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 41 "parser.mly"
      ( A.OpExp {
          left= IntExp 0;
          oper= MinusOp;
          right= e;
          pos= _startofs
      } )
# 2257 "parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv294)) : 'freshtv296)
    | _ ->
        _menhir_fail ()

and _menhir_reduce39 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 8 "parser.mly"
       (string)
# 2266 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (i : (
# 8 "parser.mly"
       (string)
# 2272 "parser.ml"
    )), _startpos_i_) = _menhir_stack in
    let _startpos = _startpos_i_ in
    let _v : 'tv_lvalue = let _startpos = _startpos_i_ in
    let _startofs = _startpos.Lexing.pos_cnum in
    
# 202 "parser.mly"
      ( A.SimpleVar (S.symbol i, _startofs) )
# 2280 "parser.ml"
     in
    _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_exp__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv215 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 2291 "parser.ml"
    ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 2301 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv209 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 2308 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (fun_id : (
# 8 "parser.mly"
       (string)
# 2313 "parser.ml"
        )), _startpos_fun_id_), _startpos__2_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_exp__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _startpos = _startpos_fun_id_ in
        let _v : 'tv_exp = let exps = 
# 232 "<standard.mly>"
    ( xs )
# 2321 "parser.ml"
         in
        let _startpos = _startpos_fun_id_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 135 "parser.mly"
      (
        A.CallExp {
          func= S.symbol fun_id;
          args= exps;
          pos= _startofs
        }
      )
# 2334 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv210)) : 'freshtv212)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 2344 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * 'tv_lvalue * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state * 'tv_lvalue * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (v : 'tv_lvalue), _startpos_v_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_v_ in
        let _v : 'tv_exp = let _startpos = _startpos_v_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 143 "parser.mly"
      (
        A.AssignExp {
          var= v;
          exp= e;
          pos= _startofs
        }
      )
# 2372 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv114)) : 'freshtv116)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2380 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv117 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2390 "parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv119 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2428 "parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv127 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2437 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv123 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2447 "parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv125 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2485 "parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv131 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2494 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv129 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2500 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), (iter_id : (
# 8 "parser.mly"
       (string)
# 2505 "parser.ml"
        )), _startpos_iter_id_), _, (e1 : 'tv_exp), _startpos_e1_), _, (e2 : 'tv_exp), _startpos_e2_), _, (e3 : 'tv_exp), _startpos_e3_) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 179 "parser.mly"
      (
        A.ForExp {
          var= S.symbol iter_id;
          escape= true;
          lo= e1;
          hi= e2;
          body= e3;
          pos= _startofs
        }
      )
# 2526 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv130)) : 'freshtv132)
    | MenhirState62 | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv134)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp), _startpos_x_) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2574 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)) : 'freshtv140)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv141 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv143 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv153 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv147 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv148)
        | COMMA | DO | END | EOF | FUNCTION | IN | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv149 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (e1 : 'tv_exp), _startpos_e1_), _, (e2 : 'tv_exp), _startpos_e2_) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _v : 'tv_exp = let _startpos = _startpos__1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 162 "parser.mly"
      (
        A.IfExp {
          test= e1;
          then'= e2;
          else'= None;
          pos= _startofs
        }
      )
# 2686 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv151 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv157 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv155 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (e1 : 'tv_exp), _startpos_e1_), _, (e2 : 'tv_exp), _startpos_e2_), _, (e3 : 'tv_exp), _startpos_e3_) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 153 "parser.mly"
      (
        A.IfExp {
          test= e1;
          then'= e2;
          else'= Some e3;
          pos= _startofs
        }
      )
# 2718 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv156)) : 'freshtv158)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv161 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2726 "parser.ml"
        ) * Lexing.position)) * (
# 8 "parser.mly"
       (string)
# 2730 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv159 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2736 "parser.ml"
        ) * Lexing.position)) * (
# 8 "parser.mly"
       (string)
# 2740 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__1_), (var_id : (
# 8 "parser.mly"
       (string)
# 2745 "parser.ml"
        )), _startpos_var_id_), (type_id : (
# 8 "parser.mly"
       (string)
# 2749 "parser.ml"
        )), _startpos_type_id_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_vardec = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 258 "parser.mly"
    (
      A.VarDec {
        name= S.symbol var_id;
        escape= true;
        typ= Some (S.symbol type_id, _startofs);
        init= e;
        pos= _startofs;
      }
    )
# 2767 "parser.ml"
         in
        _menhir_goto_vardec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv165 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2775 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv163 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2781 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), (var_id : (
# 8 "parser.mly"
       (string)
# 2786 "parser.ml"
        )), _startpos_var_id_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_vardec = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 268 "parser.mly"
    (
      A.VarDec {
        name= S.symbol var_id;
        escape= true;
        typ= None;
        init= e;
        pos= _startofs
      }
    )
# 2803 "parser.ml"
         in
        _menhir_goto_vardec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv169 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2811 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv167 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2817 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), (fun_id : (
# 8 "parser.mly"
       (string)
# 2822 "parser.ml"
        )), _startpos_fun_id_), _startpos__3_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_fundec = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 2831 "parser.ml"
         in
        let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 281 "parser.mly"
    (
      {
        name= S.symbol fun_id;
        params= (type_fields);
        result= None;
        body= e;
        pos= _startofs
      }
    )
# 2846 "parser.ml"
         in
        _menhir_goto_fundec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv173 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2854 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 8 "parser.mly"
       (string)
# 2858 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv171 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 2864 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 8 "parser.mly"
       (string)
# 2868 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), (fun_id : (
# 8 "parser.mly"
       (string)
# 2873 "parser.ml"
        )), _startpos_fun_id_), _startpos__3_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)), (type_id : (
# 8 "parser.mly"
       (string)
# 2877 "parser.ml"
        )), _startpos_type_id_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_fundec = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 2887 "parser.ml"
         in
        let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 291 "parser.mly"
    (
      {
        name= S.symbol fun_id;
        params= (type_fields);
        result= Some (S.symbol type_id, _startofs);
        body= e;
        pos= _startofs
      }
    )
# 2902 "parser.ml"
         in
        _menhir_goto_fundec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)
    | MenhirState9 | MenhirState111 | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv176)
        | END | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
            let _v : 'tv_expseq = let _startpos = _startpos_e_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 210 "parser.mly"
    ( A.SeqExp [(e, _startofs)] )
# 2952 "parser.ml"
             in
            _menhir_goto_expseq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * 'tv_lvalue * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv185 * _menhir_state * 'tv_lvalue * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv183 * _menhir_state * 'tv_lvalue * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (v : 'tv_lvalue), _startpos_v_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _startpos = _startpos_v_ in
            let _v : 'tv_lvalue = let _startpos = _startpos_v_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 204 "parser.mly"
      ( A.SubscriptVar (v, e, _startofs))
# 2983 "parser.ml"
             in
            _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv184)) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv187 * _menhir_state * 'tv_lvalue * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv191 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv193 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv199 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv197 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (e1 : 'tv_exp), _startpos_e1_), _, (e2 : 'tv_exp), _startpos_e2_) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 171 "parser.mly"
      (
        A.WhileExp {
          test= e1;
          body= e2;
          pos= _startofs
        }
      )
# 3058 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv198)) : 'freshtv200)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (v : 'tv_exp), _startpos_v_) = _menhir_stack in
            let _2 = () in
            let _v : (
# 26 "parser.mly"
       (Ast.Absyn.exp option)
# 3077 "parser.ml"
            ) = 
# 30 "parser.mly"
                (Some v)
# 3081 "parser.ml"
             in
            _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv33 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_dec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * 'tv_fundec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * Lexing.position) * _menhir_state * 'tv_nonempty_list_dec_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_tydec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv45 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3132 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 8 "parser.mly"
       (string)
# 3136 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv47 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3145 "parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3154 "parser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv54)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3172 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv57 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv63 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3196 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3205 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_exp_basic * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_lvalue * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3279 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 3288 "parser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv99 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3302 "parser.ml"
        ) * Lexing.position)) * (
# 8 "parser.mly"
       (string)
# 3306 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_lvalue * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv112)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (string)
# 3376 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((str : (
# 10 "parser.mly"
       (string)
# 3386 "parser.ml"
    )) : (
# 10 "parser.mly"
       (string)
# 3390 "parser.ml"
    )) = _v in
    let (_startpos_str_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_str_ in
    let _v : 'tv_exp_basic = let _startpos = _startpos_str_ in
    let _startofs = _startpos.Lexing.pos_cnum in
    
# 39 "parser.mly"
                 ( A.StringExp (str, _startofs) )
# 3399 "parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv32)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _startpos = _startpos__1_ in
    let _v : 'tv_exp_basic = 
# 37 "parser.mly"
        ( A.NilExp )
# 3415 "parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv30)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (int)
# 3493 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 9 "parser.mly"
       (int)
# 3503 "parser.ml"
    )) : (
# 9 "parser.mly"
       (int)
# 3507 "parser.ml"
    )) = _v in
    let (_startpos_i_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_i_ in
    let _v : 'tv_exp_basic = 
# 38 "parser.mly"
            ( A.IntExp i )
# 3514 "parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv28)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (string)
# 3554 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 3566 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NIL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState18 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp__ = 
# 142 "<standard.mly>"
    ( [] )
# 3602 "parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv24)
    | AND | ASSIGN | COMMA | DIVIDE | DO | DOT | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LBRACK | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
        _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 3618 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "parser.mly"
       (string)
# 3635 "parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3647 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state * Lexing.position) * (
# 8 "parser.mly"
       (string)
# 3685 "parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "parser.mly"
       (Ast.Absyn.exp option)
# 3700 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 26 "parser.mly"
       (Ast.Absyn.exp option)
# 3709 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 26 "parser.mly"
       (Ast.Absyn.exp option)
# 3717 "parser.ml"
    )) : (
# 26 "parser.mly"
       (Ast.Absyn.exp option)
# 3721 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv10)) : 'freshtv12)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _startpos = _startpos__1_ in
    let _v : 'tv_exp = let _startpos = _startpos__1_ in
    let _startofs = _startpos.Lexing.pos_cnum in
    
# 189 "parser.mly"
          ((A.BreakExp (_startofs)))
# 3739 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv8)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 26 "parser.mly"
       (Ast.Absyn.exp option)
# 3758 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 26 "parser.mly"
       (Ast.Absyn.exp option)
# 3790 "parser.ml"
        ) = 
# 31 "parser.mly"
       ( None )
# 3794 "parser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | FOR ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

# 269 "<standard.mly>"
  

# 3825 "parser.ml"
