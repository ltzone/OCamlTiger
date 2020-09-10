
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
# 11 "lib/frontend/parser.mly"
       (string)
# 17 "lib/frontend/parser.ml"
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
# 10 "lib/frontend/parser.mly"
       (int)
# 38 "lib/frontend/parser.ml"
  )
    | IN
    | IF
    | ID of (
# 9 "lib/frontend/parser.mly"
       (string)
# 45 "lib/frontend/parser.ml"
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
  | MenhirState141
  | MenhirState136
  | MenhirState134
  | MenhirState126
  | MenhirState122
  | MenhirState117
  | MenhirState116
  | MenhirState115
  | MenhirState113
  | MenhirState109
  | MenhirState106
  | MenhirState94
  | MenhirState89
  | MenhirState84
  | MenhirState81
  | MenhirState79
  | MenhirState71
  | MenhirState69
  | MenhirState67
  | MenhirState65
  | MenhirState61
  | MenhirState59
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState28
  | MenhirState26
  | MenhirState24
  | MenhirState21
  | MenhirState18
  | MenhirState16
  | MenhirState15
  | MenhirState10
  | MenhirState8
  | MenhirState7
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 1 "lib/frontend/parser.mly"
  
  module A = Ast.Absyn
  module S = Ast.Symbol


# 133 "lib/frontend/parser.ml"

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_tyfield__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv545) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv541) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv539) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ty = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 157 "lib/frontend/parser.ml"
             in
            
# 286 "lib/frontend/parser.mly"
      ( A.RecordTy (type_fields) )
# 162 "lib/frontend/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv540)) : 'freshtv542)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv543) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv544)) : 'freshtv546)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv565 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 177 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv561 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 187 "lib/frontend/parser.ml"
            ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv555 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 197 "lib/frontend/parser.ml"
                ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv551 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 207 "lib/frontend/parser.ml"
                    ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
                    let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 212 "lib/frontend/parser.ml"
                    )) = _v in
                    let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQ ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((((('freshtv547 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 224 "lib/frontend/parser.ml"
                        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 228 "lib/frontend/parser.ml"
                        ) * Lexing.position) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BREAK ->
                            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | FOR ->
                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | ID _v ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IF ->
                            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | INT _v ->
                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LET ->
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LPAREN ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | MINUS ->
                            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NIL ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | STRING _v ->
                            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | WHILE ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv548)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((((('freshtv549 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 266 "lib/frontend/parser.ml"
                        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 270 "lib/frontend/parser.ml"
                        ) * Lexing.position) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv550)) : 'freshtv552)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv553 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 281 "lib/frontend/parser.ml"
                    ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv554)) : 'freshtv556)
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv557 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 290 "lib/frontend/parser.ml"
                ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FOR ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | ID _v ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MINUS ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NIL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv558)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv559 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 328 "lib/frontend/parser.ml"
                ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv560)) : 'freshtv562)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv563 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 339 "lib/frontend/parser.ml"
            ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv564)) : 'freshtv566)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_tyfield_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_tyfield_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv533 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv531 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_tyfield_) : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_tyfield)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_tyfield_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 363 "lib/frontend/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_tyfield_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)) : 'freshtv534)
    | MenhirState106 | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv535) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_tyfield_) : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_tyfield__ = 
# 144 "<standard.mly>"
    ( x )
# 378 "lib/frontend/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv536)) : 'freshtv538)
    | _ ->
        _menhir_fail ()

and _menhir_reduce17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (v : 'tv_lvalue), _startpos_v_) = _menhir_stack in
    let _startpos = _startpos_v_ in
    let _v : 'tv_exp_basic = 
# 37 "lib/frontend/parser.mly"
               ( A.VarExp v )
# 391 "lib/frontend/parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_goto_decs : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_decs -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state * 'tv_fundec) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv513 * _menhir_state * 'tv_fundec) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (fun_dec : 'tv_fundec)), _, (decs_tl : 'tv_decs)) = _menhir_stack in
        let _v : 'tv_decs = 
# 265 "lib/frontend/parser.mly"
    ( match decs_tl with
      | [] -> [ A.FunctionDec [fun_dec] ]
      | hd :: tl -> match hd with
                    | A.FunctionDec fun_dec' -> A.FunctionDec (fun_dec::fun_dec') :: tl
                    | _ -> A.FunctionDec [fun_dec] :: hd :: tl  )
# 412 "lib/frontend/parser.ml"
         in
        _menhir_goto_decs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv519 * _menhir_state * 'tv_tydec) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv517 * _menhir_state * 'tv_tydec) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (ty_dec : 'tv_tydec)), _, (decs_tl : 'tv_decs)) = _menhir_stack in
        let _v : 'tv_decs = 
# 257 "lib/frontend/parser.mly"
    ( match decs_tl with
      | [] -> [ A.TypeDec [ty_dec] ]
      | hd :: tl -> match hd with
                    | A.TypeDec ty_dec' -> (A.TypeDec (ty_dec::ty_dec')) :: tl
                    | _ -> (A.TypeDec [ty_dec]) :: hd :: tl )
# 428 "lib/frontend/parser.ml"
         in
        _menhir_goto_decs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv523 * _menhir_state * 'tv_vardec) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv521 * _menhir_state * 'tv_vardec) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (vdec : 'tv_vardec)), _, (decs_tl : 'tv_decs)) = _menhir_stack in
        let _v : 'tv_decs = 
# 263 "lib/frontend/parser.mly"
    ( vdec::decs_tl )
# 440 "lib/frontend/parser.ml"
         in
        _menhir_goto_decs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv522)) : 'freshtv524)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state * Lexing.position) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv525 * _menhir_state * Lexing.position) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv526)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv527 * _menhir_state * Lexing.position) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv511 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 497 "lib/frontend/parser.ml"
    ) * Lexing.position)) = Obj.magic _menhir_stack in
    let (_v : 'tv_ty) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv509 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 504 "lib/frontend/parser.ml"
    ) * Lexing.position)) = Obj.magic _menhir_stack in
    let ((type_def : 'tv_ty) : 'tv_ty) = _v in
    ((let ((_menhir_stack, _menhir_s, _startpos__1_), (type_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 510 "lib/frontend/parser.ml"
    )), _startpos_type_id_) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : 'tv_tydec = let _startpos = _startpos__1_ in
    let _startofs = _startpos.Lexing.pos_cnum in
    
# 274 "lib/frontend/parser.mly"
      ( 
        {
          name= S.symbol type_id;
          ty= type_def;
          pos= _startofs;
        }
      )
# 525 "lib/frontend/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv507) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_tydec) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv505 * _menhir_state * 'tv_tydec) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN ->
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv506)) : 'freshtv508)) : 'freshtv510)) : 'freshtv512)

and _menhir_reduce43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_tyfield__ = 
# 142 "<standard.mly>"
    ( [] )
# 555 "lib/frontend/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "lib/frontend/parser.mly"
       (string)
# 562 "lib/frontend/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 574 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv497 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 584 "lib/frontend/parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 589 "lib/frontend/parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv495 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 597 "lib/frontend/parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let ((type_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 602 "lib/frontend/parser.ml"
            )) : (
# 9 "lib/frontend/parser.mly"
       (string)
# 606 "lib/frontend/parser.ml"
            )) = _v in
            let (_startpos_type_id_ : Lexing.position) = _startpos in
            ((let (_menhir_stack, _menhir_s, (field_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 612 "lib/frontend/parser.ml"
            )), _startpos_field_id_) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_tyfield = let _startpos = _startpos_field_id_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 292 "lib/frontend/parser.mly"
      (
        ({
          name= S.symbol field_id;
          escape= true;
          typ= S.symbol type_id;
          pos= _startofs
        })
      )
# 627 "lib/frontend/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv493) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tyfield) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv491 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv486)
            | RBRACE | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_tyfield)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_tyfield_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 658 "lib/frontend/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_tyfield_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)) : 'freshtv494)) : 'freshtv496)) : 'freshtv498)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv499 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 675 "lib/frontend/parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv500)) : 'freshtv502)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv503 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 686 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)

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

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_goto_lvalue : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState0 | MenhirState141 | MenhirState1 | MenhirState136 | MenhirState134 | MenhirState7 | MenhirState8 | MenhirState126 | MenhirState122 | MenhirState113 | MenhirState109 | MenhirState84 | MenhirState15 | MenhirState81 | MenhirState79 | MenhirState16 | MenhirState69 | MenhirState65 | MenhirState18 | MenhirState61 | MenhirState59 | MenhirState21 | MenhirState26 | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
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
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv478)
        | AND | COMMA | DIVIDE | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
            _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)
    | MenhirState4 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_lvalue * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) : 'freshtv484)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_exp__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv475 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 977 "lib/frontend/parser.ml"
    ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv471 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 987 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv469 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 994 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (fun_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 999 "lib/frontend/parser.ml"
        )), _startpos_fun_id_), _startpos__2_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_exp__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _startpos = _startpos_fun_id_ in
        let _v : 'tv_exp_basic = let exps = 
# 232 "<standard.mly>"
    ( xs )
# 1007 "lib/frontend/parser.ml"
         in
        let _startpos = _startpos_fun_id_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 133 "lib/frontend/parser.mly"
      (
        A.CallExp {
          func= S.symbol fun_id;
          args= exps;
          pos= _startofs
        }
      )
# 1020 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv470)) : 'freshtv472)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1030 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_COMMA_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_exp_) : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp__ = 
# 144 "<standard.mly>"
    ( x )
# 1055 "lib/frontend/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)) : 'freshtv464)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467 * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_exp_) : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_exp), _startpos_x_) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1072 "lib/frontend/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)) : 'freshtv468)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expseq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expseq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv447 * _menhir_state * Lexing.position) * _menhir_state * 'tv_decs)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv443 * _menhir_state * Lexing.position) * _menhir_state * 'tv_decs)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv441 * _menhir_state * Lexing.position) * _menhir_state * 'tv_decs)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (dec_lis : 'tv_decs)), _, (exps : 'tv_expseq)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _v : 'tv_exp = let _startpos = _startpos__1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 194 "lib/frontend/parser.mly"
      (
        A.LetExp {
          decs= dec_lis;
          body= exps;
          pos= _startofs
        }
      )
# 1110 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv442)) : 'freshtv444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv445 * _menhir_state * Lexing.position) * _menhir_state * 'tv_decs)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv451 * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp), _startpos_e1_), _, (exps : 'tv_expseq)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expseq = let _startpos = _startpos_e1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 246 "lib/frontend/parser.mly"
    ( match exps with
      | A.SeqExp es -> A.SeqExp ((e1,_startofs)::es)
      | _ -> assert false (* impossible expseq *)
    )
# 1135 "lib/frontend/parser.ml"
         in
        _menhir_goto_expseq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv459 * _menhir_state * Lexing.position) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv455 * _menhir_state * Lexing.position) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv453 * _menhir_state * Lexing.position) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (elis : 'tv_expseq)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _v : 'tv_exp = 
# 152 "lib/frontend/parser.mly"
      ( elis )
# 1157 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv454)) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv457 * _menhir_state * Lexing.position) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fundec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fundec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_fundec) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN ->
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv440)

and _menhir_goto_vardec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_vardec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_vardec) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN ->
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv438)

and _menhir_goto_separated_nonempty_list_COMMA_exp_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_field_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv431 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1220 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_field_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv429 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1228 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_exp_field_) : 'tv_separated_nonempty_list_COMMA_exp_field_) = _v in
        ((let ((_menhir_stack, _menhir_s, (field_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1235 "lib/frontend/parser.ml"
        )), _startpos_field_id_), _, (exp1 : 'tv_exp), _startpos_exp1_) = _menhir_stack in
        let _2 = () in
        let _2_inlined1 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_field_ = let x =
          let _2 = _2_inlined1 in
          let _startpos = _startpos_field_id_ in
          let _startofs = _startpos.Lexing.pos_cnum in
          
# 220 "lib/frontend/parser.mly"
  (
    (S.symbol field_id, exp1, _startofs )
  )
# 1248 "lib/frontend/parser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 1254 "lib/frontend/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_field_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_exp_field_) : 'tv_separated_nonempty_list_COMMA_exp_field_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_field__ = 
# 144 "<standard.mly>"
    ( x )
# 1269 "lib/frontend/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp_field__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | _ ->
        _menhir_fail ()

and _menhir_reduce47 : _menhir_env -> ((('ttv_tail * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1278 "lib/frontend/parser.ml"
) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1284 "lib/frontend/parser.ml"
    )), _startpos_v_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _startpos = _startpos_v_ in
    let _v : 'tv_lvalue_t = let _startpos = _startpos_v_ in
    let _startofs = _startpos.Lexing.pos_cnum in
    
# 232 "lib/frontend/parser.mly"
      ( A.SubscriptVar (A.SimpleVar (S.symbol v, _startofs),
                        e, _startofs))
# 1295 "lib/frontend/parser.ml"
     in
    _menhir_goto_lvalue_t _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_goto_lvalue_t : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_t -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_lvalue_t * Lexing.position) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * 'tv_lvalue_t * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv415 * _menhir_state * 'tv_lvalue_t * Lexing.position)) = Obj.magic _menhir_stack in
            let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1319 "lib/frontend/parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv413 * _menhir_state * 'tv_lvalue_t * Lexing.position)) = Obj.magic _menhir_stack in
            let ((i : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1328 "lib/frontend/parser.ml"
            )) : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1332 "lib/frontend/parser.ml"
            )) = _v in
            let (_startpos_i_ : Lexing.position) = _startpos in
            ((let (_menhir_stack, _menhir_s, (v : 'tv_lvalue_t), _startpos_v_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_v_ in
            let _v : 'tv_lvalue_t = let _startpos = _startpos_v_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 240 "lib/frontend/parser.mly"
      ( (A.FieldVar (v, S.symbol i, _startofs)) )
# 1343 "lib/frontend/parser.ml"
             in
            _menhir_goto_lvalue_t _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv414)) : 'freshtv416)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv417 * _menhir_state * 'tv_lvalue_t * Lexing.position)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)
    | LBRACK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state * 'tv_lvalue_t * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NIL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv422)
    | AND | ASSIGN | COMMA | DIVIDE | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * 'tv_lvalue_t * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (i : 'tv_lvalue_t), _startpos_i_) = _menhir_stack in
        let _startpos = _startpos_i_ in
        let _v : 'tv_lvalue = 
# 228 "lib/frontend/parser.mly"
      ( i )
# 1393 "lib/frontend/parser.ml"
         in
        _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv424)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_lvalue_t * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "lib/frontend/parser.mly"
       (string)
# 1407 "lib/frontend/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
    | LBRACK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1421 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NIL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv410)
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | AND | COMMA | DIVIDE | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
        _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1463 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)

and _menhir_reduce1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_decs = 
# 255 "lib/frontend/parser.mly"
                   ( [] )
# 1473 "lib/frontend/parser.ml"
     in
    _menhir_goto_decs _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1489 "lib/frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1501 "lib/frontend/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv392)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv401 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1537 "lib/frontend/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv397 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1547 "lib/frontend/parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1552 "lib/frontend/parser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ASSIGN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv393 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1564 "lib/frontend/parser.ml"
                    ) * Lexing.position)) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1568 "lib/frontend/parser.ml"
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
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
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
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv394)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv395 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1606 "lib/frontend/parser.ml"
                    ) * Lexing.position)) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1610 "lib/frontend/parser.ml"
                    ) * Lexing.position) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s, _), _, _), _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv399 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1621 "lib/frontend/parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv403 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1632 "lib/frontend/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)) : 'freshtv406)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1656 "lib/frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv383 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1668 "lib/frontend/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv373) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | OF ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv369 * Lexing.position) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv365 * Lexing.position)) = Obj.magic _menhir_stack in
                        let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1693 "lib/frontend/parser.ml"
                        )) = _v in
                        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv363 * Lexing.position)) = Obj.magic _menhir_stack in
                        let ((type_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1702 "lib/frontend/parser.ml"
                        )) : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1706 "lib/frontend/parser.ml"
                        )) = _v in
                        let (_startpos_type_id_ : Lexing.position) = _startpos in
                        ((let (_menhir_stack, _startpos__1_) = _menhir_stack in
                        let _2 = () in
                        let _1 = () in
                        let _v : 'tv_ty = let _startpos = _startpos__1_ in
                        let _startofs = _startpos.Lexing.pos_cnum in
                        
# 288 "lib/frontend/parser.mly"
      ( A.ArrayTy (S.symbol type_id, _startofs ))
# 1717 "lib/frontend/parser.ml"
                         in
                        _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv364)) : 'freshtv366)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv367 * Lexing.position)) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv368)) : 'freshtv370)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv371 * Lexing.position) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv372)) : 'freshtv374)
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv377) = Obj.magic _menhir_stack in
                let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1738 "lib/frontend/parser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv375) = Obj.magic _menhir_stack in
                let ((type_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1747 "lib/frontend/parser.ml"
                )) : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1751 "lib/frontend/parser.ml"
                )) = _v in
                let (_startpos_type_id_ : Lexing.position) = _startpos in
                ((let _v : 'tv_ty = let _startpos = _startpos_type_id_ in
                let _startofs = _startpos.Lexing.pos_cnum in
                
# 284 "lib/frontend/parser.mly"
      ( A.NameTy (S.symbol type_id, _startofs ) )
# 1759 "lib/frontend/parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv376)) : 'freshtv378)
            | LBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv379) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RBRACE ->
                    _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv380)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv381 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1783 "lib/frontend/parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv385 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1794 "lib/frontend/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 1818 "lib/frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1830 "lib/frontend/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 1852 "lib/frontend/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)

and _menhir_goto_exp_basic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_basic -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState0 | MenhirState141 | MenhirState1 | MenhirState136 | MenhirState134 | MenhirState7 | MenhirState8 | MenhirState126 | MenhirState122 | MenhirState113 | MenhirState109 | MenhirState84 | MenhirState15 | MenhirState81 | MenhirState79 | MenhirState16 | MenhirState69 | MenhirState65 | MenhirState18 | MenhirState61 | MenhirState59 | MenhirState21 | MenhirState24 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEQ ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv276)
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277 * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp = 
# 142 "lib/frontend/parser.mly"
                   ( e1 )
# 1924 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_e1_ in
        let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 63 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= TimesOp;
          right= e2;
          pos= _startofs
      } )
# 1952 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv284)) : 'freshtv286)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 49 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= PlusOp;
          right= e2;
          pos= _startofs
      } )
# 1981 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_e1_ in
        let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 70 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= DivideOp;
          right= e2;
          pos= _startofs
      } )
# 2009 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv294)) : 'freshtv296)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEQ ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 119 "lib/frontend/parser.mly"
      ( A.IfExp {
          test= e1;
          then'= IntExp 1;
          else'= Some e2;
          pos= _startofs
      } )
# 2056 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 84 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= NeqOp;
          right= e2;
          pos= _startofs
      } )
# 2096 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_exp_basic * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_exp_basic * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _startpos__2_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 56 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= MinusOp;
          right= e2;
          pos= _startofs
      } )
# 2132 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_exp_basic * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 91 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= LtOp;
          right= e2;
          pos= _startofs
      } )
# 2172 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 105 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= LeOp;
          right= e2;
          pos= _startofs
      } )
# 2212 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 98 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= GtOp;
          right= e2;
          pos= _startofs
      } )
# 2252 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 112 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= GeOp;
          right= e2;
          pos= _startofs
      } )
# 2292 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 77 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= e1;
          oper= EqOp;
          right= e2;
          pos= _startofs
      } )
# 2332 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)) : 'freshtv344)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEQ ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic), _startpos_e1_), _, (e2 : 'tv_exp_basic), _startpos_e2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_e1_ in
            let _v : 'tv_exp_basic = let _startpos = _startpos_e1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 126 "lib/frontend/parser.mly"
      ( A.IfExp {
          test= e1;
          then'= e2;
          else'= Some (IntExp 0);
          pos= _startofs
      } )
# 2384 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_exp_basic * Lexing.position)) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv353 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv351 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp_basic * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (e : 'tv_exp_basic), _startpos_e_) = _menhir_stack in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp_basic = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 42 "lib/frontend/parser.mly"
      ( A.OpExp {
          left= IntExp 0;
          oper= MinusOp;
          right= e;
          pos= _startofs
      } )
# 2412 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv352)) : 'freshtv354)
    | _ ->
        _menhir_fail ()

and _menhir_reduce45 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2421 "lib/frontend/parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (i : (
# 9 "lib/frontend/parser.mly"
       (string)
# 2427 "lib/frontend/parser.ml"
    )), _startpos_i_) = _menhir_stack in
    let _startpos = _startpos_i_ in
    let _v : 'tv_lvalue = let _startpos = _startpos_i_ in
    let _startofs = _startpos.Lexing.pos_cnum in
    
# 226 "lib/frontend/parser.mly"
      ( A.SimpleVar (S.symbol i, _startofs) )
# 2435 "lib/frontend/parser.ml"
     in
    _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run7 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2442 "lib/frontend/parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp__ = 
# 142 "<standard.mly>"
    ( [] )
# 2478 "lib/frontend/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp_field__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_exp_field__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv271 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2493 "lib/frontend/parser.ml"
    ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_field__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2503 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_field__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2510 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_field__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (type_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 2515 "lib/frontend/parser.ml"
        )), _startpos_type_id_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_exp_field__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _startpos = _startpos_type_id_ in
        let _v : 'tv_exp = let rec_fields = 
# 232 "<standard.mly>"
    ( xs )
# 2523 "lib/frontend/parser.ml"
         in
        let _startpos = _startpos_type_id_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 210 "lib/frontend/parser.mly"
      (
        A.RecordExp {
          fields= rec_fields;
          typ= S.symbol type_id;
          pos= _startofs
        }
      )
# 2536 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv266)) : 'freshtv268)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2546 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_field__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)) : 'freshtv272)

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "lib/frontend/parser.mly"
       (string)
# 2554 "lib/frontend/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2566 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NIL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv262)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2604 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2612 "lib/frontend/parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2623 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 2628 "lib/frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2636 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let ((i : (
# 9 "lib/frontend/parser.mly"
       (string)
# 2641 "lib/frontend/parser.ml"
        )) : (
# 9 "lib/frontend/parser.mly"
       (string)
# 2645 "lib/frontend/parser.ml"
        )) = _v in
        let (_startpos_i_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, (v : (
# 9 "lib/frontend/parser.mly"
       (string)
# 2651 "lib/frontend/parser.ml"
        )), _startpos_v_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_v_ in
        let _v : 'tv_lvalue_t = let _startpos = _startpos_v_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 237 "lib/frontend/parser.mly"
      ( (A.FieldVar (A.SimpleVar (S.symbol v, _startofs),
                     S.symbol i, _startofs)) )
# 2661 "lib/frontend/parser.ml"
         in
        _menhir_goto_lvalue_t _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv256)) : 'freshtv258)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2671 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state * 'tv_lvalue * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * 'tv_lvalue * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (v : 'tv_lvalue), _startpos_v_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_v_ in
        let _v : 'tv_exp = let _startpos = _startpos_v_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 144 "lib/frontend/parser.mly"
      (
        A.AssignExp {
          var= v;
          exp= e;
          pos= _startofs
        }
      )
# 2699 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv132)) : 'freshtv134)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state * 'tv_lvalue_t * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_lvalue_t * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv135 * _menhir_state * 'tv_lvalue_t * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (v : 'tv_lvalue_t), _startpos_v_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _startpos = _startpos_v_ in
            let _v : 'tv_lvalue_t = let _startpos = _startpos_v_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 235 "lib/frontend/parser.mly"
      ( A.SubscriptVar (v, e, _startofs))
# 2723 "lib/frontend/parser.ml"
             in
            _menhir_goto_lvalue_t _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv136)) : 'freshtv138)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state * 'tv_lvalue_t * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2738 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv143 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2748 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv144)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv145 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2786 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv153 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2795 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv149 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2805 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv151 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2843 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv157 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2852 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv155 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2858 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), (iter_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 2863 "lib/frontend/parser.ml"
        )), _startpos_iter_id_), _, (e1 : 'tv_exp), _startpos_e1_), _, (e2 : 'tv_exp), _startpos_e2_), _, (e3 : 'tv_exp), _startpos_e3_) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 182 "lib/frontend/parser.mly"
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
# 2884 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv156)) : 'freshtv158)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2892 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv163 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2902 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv159 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2912 "lib/frontend/parser.ml"
                ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
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
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv160)
            | AND | ASSIGN | COMMA | DIVIDE | DO | DOT | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LBRACK | LE | LT | MINUS | NEQ | OR | PLUS | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
                _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv161 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2952 "lib/frontend/parser.ml"
                ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv165 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2963 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv171 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2972 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position))) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv169 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 2978 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position))) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (type_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 2983 "lib/frontend/parser.ml"
        )), _startpos_type_id_), _, (exp1 : 'tv_exp), _startpos_exp1_), _, (exp2 : 'tv_exp), _startpos_exp2_) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _startpos = _startpos_type_id_ in
        let _v : 'tv_exp = let _startpos = _startpos_type_id_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 202 "lib/frontend/parser.mly"
      (
        A.ArrayExp { 
          typ= (S.symbol type_id); 
          size= exp1; 
          init= exp2; 
          pos= _startofs }
      )
# 3000 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv170)) : 'freshtv172)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3008 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3018 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv174)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv175 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3034 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (field_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 3039 "lib/frontend/parser.ml"
            )), _startpos_field_id_), _, (exp1 : 'tv_exp), _startpos_exp1_) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_field_ = let x =
              let _startpos = _startpos_field_id_ in
              let _startofs = _startpos.Lexing.pos_cnum in
              
# 220 "lib/frontend/parser.mly"
  (
    (S.symbol field_id, exp1, _startofs )
  )
# 3050 "lib/frontend/parser.ml"
              
            in
            
# 241 "<standard.mly>"
    ( [ x ] )
# 3056 "lib/frontend/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv177 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3066 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)) : 'freshtv180)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv193 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv187 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv188)
        | COMMA | DO | END | EOF | FUNCTION | IN | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv189 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (e1 : 'tv_exp), _startpos_e1_), _, (e2 : 'tv_exp), _startpos_e2_) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _v : 'tv_exp = let _startpos = _startpos__1_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 165 "lib/frontend/parser.mly"
      (
        A.IfExp {
          test= e1;
          then'= e2;
          else'= None;
          pos= _startofs
        }
      )
# 3172 "lib/frontend/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv197 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv195 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (e1 : 'tv_exp), _startpos_e1_), _, (e2 : 'tv_exp), _startpos_e2_), _, (e3 : 'tv_exp), _startpos_e3_) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 156 "lib/frontend/parser.mly"
      (
        A.IfExp {
          test= e1;
          then'= e2;
          else'= Some e3;
          pos= _startofs
        }
      )
# 3204 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv196)) : 'freshtv198)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv201 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3212 "lib/frontend/parser.ml"
        ) * Lexing.position)) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3216 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv199 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3222 "lib/frontend/parser.ml"
        ) * Lexing.position)) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3226 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__1_), (var_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 3231 "lib/frontend/parser.ml"
        )), _startpos_var_id_), (type_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 3235 "lib/frontend/parser.ml"
        )), _startpos_type_id_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_vardec = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 304 "lib/frontend/parser.mly"
    (
      A.VarDec {
        name= S.symbol var_id;
        escape= true;
        typ= Some (S.symbol type_id, _startofs);
        init= e;
        pos= _startofs;
      }
    )
# 3253 "lib/frontend/parser.ml"
         in
        _menhir_goto_vardec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)) : 'freshtv202)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv205 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3261 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv203 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3267 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), (var_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 3272 "lib/frontend/parser.ml"
        )), _startpos_var_id_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_vardec = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 314 "lib/frontend/parser.mly"
    (
      A.VarDec {
        name= S.symbol var_id;
        escape= true;
        typ= None;
        init= e;
        pos= _startofs
      }
    )
# 3289 "lib/frontend/parser.ml"
         in
        _menhir_goto_vardec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv209 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3297 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv207 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3303 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), (fun_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 3308 "lib/frontend/parser.ml"
        )), _startpos_fun_id_), _startpos__3_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_fundec = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 3317 "lib/frontend/parser.ml"
         in
        let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 327 "lib/frontend/parser.mly"
    (
      {
        name= S.symbol fun_id;
        params= (type_fields);
        result= None;
        body= e;
        pos= _startofs
      }
    )
# 3332 "lib/frontend/parser.ml"
         in
        _menhir_goto_fundec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv213 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3340 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3344 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv211 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3350 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3354 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), (fun_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 3359 "lib/frontend/parser.ml"
        )), _startpos_fun_id_), _startpos__3_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)), (type_id : (
# 9 "lib/frontend/parser.mly"
       (string)
# 3363 "lib/frontend/parser.ml"
        )), _startpos_type_id_), _, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_fundec = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 3373 "lib/frontend/parser.ml"
         in
        let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 337 "lib/frontend/parser.mly"
    (
      {
        name= S.symbol fun_id;
        params= (type_fields);
        result= Some (S.symbol type_id, _startofs);
        body= e;
        pos= _startofs
      }
    )
# 3388 "lib/frontend/parser.ml"
         in
        _menhir_goto_fundec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)) : 'freshtv214)
    | MenhirState8 | MenhirState126 | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv216)
        | END | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp), _startpos_e_) = _menhir_stack in
            let _v : 'tv_expseq = let _startpos = _startpos_e_ in
            let _startofs = _startpos.Lexing.pos_cnum in
            
# 244 "lib/frontend/parser.mly"
    ( A.SeqExp [(e, _startofs)] )
# 3438 "lib/frontend/parser.ml"
             in
            _menhir_goto_expseq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState134 | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv224)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp), _startpos_x_) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3493 "lib/frontend/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv235 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3508 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv231 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3518 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3529 "lib/frontend/parser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)) : 'freshtv236)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv237 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv238)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv239 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)) : 'freshtv242)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv245 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv243 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (e1 : 'tv_exp), _startpos_e1_), _, (e2 : 'tv_exp), _startpos_e2_) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp = let _startpos = _startpos__1_ in
        let _startofs = _startpos.Lexing.pos_cnum in
        
# 174 "lib/frontend/parser.mly"
      (
        A.WhileExp {
          test= e1;
          body= e2;
          pos= _startofs
        }
      )
# 3598 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv244)) : 'freshtv246)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (v : 'tv_exp), _startpos_v_) = _menhir_stack in
            let _2 = () in
            let _v : (
# 27 "lib/frontend/parser.mly"
       (Ast.Absyn.exp option)
# 3617 "lib/frontend/parser.ml"
            ) = 
# 31 "lib/frontend/parser.mly"
                (Some v)
# 3621 "lib/frontend/parser.ml"
             in
            _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_exp * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3647 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * Lexing.position) * _menhir_state * 'tv_decs)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * 'tv_fundec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state * 'tv_tydec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state * 'tv_vardec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv55 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3686 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3690 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv57 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3699 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3708 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv64)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3726 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv67 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv71 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3745 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3754 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3763 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv77 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3772 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv79 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3781 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3790 "lib/frontend/parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_exp * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_exp_basic * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_exp_basic * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_lvalue * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * 'tv_lvalue_t * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3869 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3878 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv117 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3892 "lib/frontend/parser.ml"
        ) * Lexing.position)) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3896 "lib/frontend/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 3915 "lib/frontend/parser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv130)

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
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
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
# 11 "lib/frontend/parser.mly"
       (string)
# 3970 "lib/frontend/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((str : (
# 11 "lib/frontend/parser.mly"
       (string)
# 3980 "lib/frontend/parser.ml"
    )) : (
# 11 "lib/frontend/parser.mly"
       (string)
# 3984 "lib/frontend/parser.ml"
    )) = _v in
    let (_startpos_str_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_str_ in
    let _v : 'tv_exp_basic = let _startpos = _startpos_str_ in
    let _startofs = _startpos.Lexing.pos_cnum in
    
# 40 "lib/frontend/parser.mly"
                 ( A.StringExp (str, _startofs) )
# 3993 "lib/frontend/parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv38)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _startpos = _startpos__1_ in
    let _v : 'tv_exp_basic = 
# 38 "lib/frontend/parser.mly"
        ( A.NilExp )
# 4009 "lib/frontend/parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv36)

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

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
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
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState8 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_exp = 
# 154 "lib/frontend/parser.mly"
      ( A.SeqExp [] )
# 4073 "lib/frontend/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv32)) : 'freshtv34)
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN ->
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "lib/frontend/parser.mly"
       (int)
# 4107 "lib/frontend/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 10 "lib/frontend/parser.mly"
       (int)
# 4117 "lib/frontend/parser.ml"
    )) : (
# 10 "lib/frontend/parser.mly"
       (int)
# 4121 "lib/frontend/parser.ml"
    )) = _v in
    let (_startpos_i_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_i_ in
    let _v : 'tv_exp_basic = 
# 39 "lib/frontend/parser.mly"
            ( A.IntExp i )
# 4128 "lib/frontend/parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv30)

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
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
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
# 9 "lib/frontend/parser.mly"
       (string)
# 4168 "lib/frontend/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
    | LBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 4182 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState67 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_field__ = 
# 142 "<standard.mly>"
    ( [] )
# 4196 "lib/frontend/parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_exp_field__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv24)
    | LBRACK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 4208 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
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
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NIL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv26)
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | AND | ASSIGN | COMMA | DIVIDE | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACE | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
        _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * (
# 9 "lib/frontend/parser.mly"
       (string)
# 4250 "lib/frontend/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)

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
# 9 "lib/frontend/parser.mly"
       (string)
# 4267 "lib/frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state * Lexing.position) * (
# 9 "lib/frontend/parser.mly"
       (string)
# 4279 "lib/frontend/parser.ml"
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
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
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
# 9 "lib/frontend/parser.mly"
       (string)
# 4317 "lib/frontend/parser.ml"
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
# 27 "lib/frontend/parser.mly"
       (Ast.Absyn.exp option)
# 4332 "lib/frontend/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 27 "lib/frontend/parser.mly"
       (Ast.Absyn.exp option)
# 4341 "lib/frontend/parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 27 "lib/frontend/parser.mly"
       (Ast.Absyn.exp option)
# 4349 "lib/frontend/parser.ml"
    )) : (
# 27 "lib/frontend/parser.mly"
       (Ast.Absyn.exp option)
# 4353 "lib/frontend/parser.ml"
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
    
# 192 "lib/frontend/parser.mly"
          ((A.BreakExp (_startofs)))
# 4371 "lib/frontend/parser.ml"
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
# 27 "lib/frontend/parser.mly"
       (Ast.Absyn.exp option)
# 4390 "lib/frontend/parser.ml"
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
# 27 "lib/frontend/parser.mly"
       (Ast.Absyn.exp option)
# 4422 "lib/frontend/parser.ml"
        ) = 
# 32 "lib/frontend/parser.mly"
       ( None )
# 4426 "lib/frontend/parser.ml"
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
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
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
  

# 4457 "lib/frontend/parser.ml"
