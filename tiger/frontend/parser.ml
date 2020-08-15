
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
# 4 "parser.mly"
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
# 3 "parser.mly"
       (int)
# 38 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 2 "parser.mly"
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
  | MenhirState121
  | MenhirState113
  | MenhirState111
  | MenhirState105
  | MenhirState98
  | MenhirState94
  | MenhirState91
  | MenhirState79
  | MenhirState74
  | MenhirState69
  | MenhirState66
  | MenhirState64
  | MenhirState61
  | MenhirState55
  | MenhirState53
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
  | MenhirState29
  | MenhirState27
  | MenhirState25
  | MenhirState20
  | MenhirState17
  | MenhirState15
  | MenhirState14
  | MenhirState10
  | MenhirState9
  | MenhirState8
  | MenhirState4
  | MenhirState1
  | MenhirState0

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_tyfield__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 82:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            Printf.fprintf stderr "Shifting (RBRACE) to state 83\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv463) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 83:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv461) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production ty -> LBRACE loption(separated_nonempty_list(COMMA,tyfield)) RBRACE \n%!";
            let (_menhir_stack, _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ty = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 145 "parser.ml"
             in
            
# 85 "parser.mly"
                                                                   ()
# 150 "parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv462)) : 'freshtv464)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv465) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)) : 'freshtv468)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv487 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 166 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 92:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            Printf.fprintf stderr "Shifting (RPAREN) to state 93\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv483 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 178 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 93:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                Printf.fprintf stderr "Shifting (COMMA) to state 96\n%!";
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv477 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 190 "parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((Printf.fprintf stderr "State 96:\n%!";
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    Printf.fprintf stderr "Shifting (ID) to state 97\n%!";
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv473 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 202 "parser.ml"
                    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
                    let (_v : (
# 2 "parser.mly"
       (string)
# 207 "parser.ml"
                    )) = _v in
                    ((Printf.fprintf stderr "State 97:\n%!";
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQ ->
                        Printf.fprintf stderr "Shifting (EQ) to state 98\n%!";
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((((('freshtv469 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 220 "parser.ml"
                        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 2 "parser.mly"
       (string)
# 224 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((Printf.fprintf stderr "State 98:\n%!";
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BREAK ->
                            Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                        | FOR ->
                            Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                        | ID _v ->
                            Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                        | IF ->
                            Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                        | INT _v ->
                            Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                        | LET ->
                            Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                        | LPAREN ->
                            Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                        | MINUS ->
                            Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                        | NIL ->
                            Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                        | STRING _v ->
                            Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                        | WHILE ->
                            Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            Printf.fprintf stderr "Initiating error handling\n%!";
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv470)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        Printf.fprintf stderr "Initiating error handling\n%!";
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((((('freshtv471 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 276 "parser.ml"
                        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 2 "parser.mly"
       (string)
# 280 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    Printf.fprintf stderr "Initiating error handling\n%!";
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv475 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 292 "parser.ml"
                    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)
            | EQ ->
                Printf.fprintf stderr "Shifting (EQ) to state 94\n%!";
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv479 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 302 "parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((Printf.fprintf stderr "State 94:\n%!";
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | FOR ->
                    Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | ID _v ->
                    Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
                | IF ->
                    Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | INT _v ->
                    Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
                | LET ->
                    Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | LPAREN ->
                    Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | MINUS ->
                    Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | NIL ->
                    Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | STRING _v ->
                    Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
                | WHILE ->
                    Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    Printf.fprintf stderr "Initiating error handling\n%!";
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv480)
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv481 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 354 "parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)) : 'freshtv484)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv485 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 366 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_tyfield_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_tyfield_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv455 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((Printf.fprintf stderr "State 80:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_tyfield_) : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((Printf.fprintf stderr "Reducing production separated_nonempty_list(COMMA,tyfield) -> tyfield COMMA separated_nonempty_list(COMMA,tyfield) \n%!";
        let (_menhir_stack, _menhir_s, (x : 'tv_tyfield)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_tyfield_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 392 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_tyfield_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)
    | MenhirState91 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((Printf.fprintf stderr "State 81:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_tyfield_) : 'tv_separated_nonempty_list_COMMA_tyfield_) = _v in
        ((Printf.fprintf stderr "Reducing production loption(separated_nonempty_list(COMMA,tyfield)) -> separated_nonempty_list(COMMA,tyfield) \n%!";
        let _v : 'tv_loption_separated_nonempty_list_COMMA_tyfield__ = 
# 144 "<standard.mly>"
    ( x )
# 409 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
    | _ ->
        _menhir_fail ()

and _menhir_reduce15 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "Reducing production exp_basic -> lvalue \n%!";
    let (_menhir_stack, _menhir_s, (v : 'tv_lvalue)) = _menhir_stack in
    let _v : 'tv_exp_basic = 
# 30 "parser.mly"
               ()
# 422 "parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 8:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | FOR ->
        Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | IF ->
        Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LET ->
        Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LPAREN ->
        Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | WHILE ->
        Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run23 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 23:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 24\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv449 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        let (_v : (
# 2 "parser.mly"
       (string)
# 484 "parser.ml"
        )) = _v in
        ((Printf.fprintf stderr "State 24:\n%!";
        let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        let ((_3 : (
# 2 "parser.mly"
       (string)
# 493 "parser.ml"
        )) : (
# 2 "parser.mly"
       (string)
# 497 "parser.ml"
        )) = _v in
        ((Printf.fprintf stderr "Reducing production lvalue -> lvalue DOT ID \n%!";
        let (_menhir_stack, _menhir_s, (v : 'tv_lvalue)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_lvalue = 
# 67 "parser.mly"
                         ()
# 505 "parser.ml"
         in
        _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)) : 'freshtv450)
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv451 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)

and _menhir_goto_dec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_dec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_dec) = Obj.magic _menhir_stack in
    ((Printf.fprintf stderr "State 113:\n%!";
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        Printf.fprintf stderr "Shifting (FUNCTION) to state 89\n%!";
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | TYPE ->
        Printf.fprintf stderr "Shifting (TYPE) to state 71\n%!";
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | VAR ->
        Printf.fprintf stderr "Shifting (VAR) to state 11\n%!";
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | IN ->
        _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv446)

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_exp__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv443) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_exp__) = _v in
    ((Printf.fprintf stderr "State 107:\n%!";
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs : 'tv_loption_separated_nonempty_list_SEMICOLON_exp__) : 'tv_loption_separated_nonempty_list_SEMICOLON_exp__) = _v in
    ((Printf.fprintf stderr "Reducing production expseq -> loption(separated_nonempty_list(SEMICOLON,exp)) \n%!";
    let _v : 'tv_expseq = let exps = 
# 232 "<standard.mly>"
    ( xs )
# 558 "parser.ml"
     in
    
# 63 "parser.mly"
                                          ()
# 563 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_expseq) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv429 * _menhir_state) * _menhir_state * 'tv_decs)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 108:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            Printf.fprintf stderr "Shifting (END) to state 109\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv425 * _menhir_state) * _menhir_state * 'tv_decs)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 109:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv423 * _menhir_state) * _menhir_state * 'tv_decs)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp -> LET decs IN expseq END \n%!";
            let (((_menhir_stack, _menhir_s), _, (let_decs : 'tv_decs)), _, (exps : 'tv_expseq)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp = 
# 58 "parser.mly"
                                                 ()
# 594 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)) : 'freshtv426)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv427 * _menhir_state) * _menhir_state * 'tv_decs)) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv437 * _menhir_state) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 115:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            Printf.fprintf stderr "Shifting (RPAREN) to state 116\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv433 * _menhir_state) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 116:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv431 * _menhir_state) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp -> LPAREN expseq RPAREN \n%!";
            let ((_menhir_stack, _menhir_s), _, (elis : 'tv_expseq)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp = 
# 52 "parser.mly"
                                    ()
# 627 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv435 * _menhir_state) * _menhir_state * 'tv_expseq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
    | _ ->
        _menhir_fail ()) : 'freshtv440)) : 'freshtv442)) : 'freshtv444)

and _menhir_goto_list_dec_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_dec_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_dec_) = _v in
        ((Printf.fprintf stderr "State 102:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((dec_lis : 'tv_list_dec_) : 'tv_list_dec_) = _v in
        ((Printf.fprintf stderr "Reducing production decs -> list(dec) \n%!";
        let _v : 'tv_decs = 
# 72 "parser.mly"
                         ()
# 658 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_decs) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv411 * _menhir_state) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 104:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            Printf.fprintf stderr "Shifting (IN) to state 105\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv407 * _menhir_state) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 105:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | END ->
                _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv409 * _menhir_state) * _menhir_state * 'tv_decs) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)) : 'freshtv414)) : 'freshtv416)) : 'freshtv418)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state * 'tv_dec) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_dec_) = _v in
        ((Printf.fprintf stderr "State 114:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * 'tv_dec) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_dec_) : 'tv_list_dec_) = _v in
        ((Printf.fprintf stderr "Reducing production list(dec) -> dec list(dec) \n%!";
        let (_menhir_stack, _menhir_s, (x : 'tv_dec)) = _menhir_stack in
        let _v : 'tv_list_dec_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 742 "parser.ml"
         in
        _menhir_goto_list_dec_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv405 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 754 "parser.ml"
    ))) = Obj.magic _menhir_stack in
    let (_v : 'tv_ty) = _v in
    ((Printf.fprintf stderr "State 88:\n%!";
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv403 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 762 "parser.ml"
    ))) = Obj.magic _menhir_stack in
    let ((type_def : 'tv_ty) : 'tv_ty) = _v in
    ((Printf.fprintf stderr "Reducing production tydec -> TYPE ID EQ ty \n%!";
    let ((_menhir_stack, _menhir_s), (type_id : (
# 2 "parser.mly"
       (string)
# 769 "parser.ml"
    ))) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : 'tv_tydec = 
# 81 "parser.mly"
                                             ()
# 776 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_tydec) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_tydec) = _v in
    ((Printf.fprintf stderr "State 101:\n%!";
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_tydec) : 'tv_tydec) = _v in
    ((Printf.fprintf stderr "Reducing production dec -> tydec \n%!";
    let _v : 'tv_dec = 
# 75 "parser.mly"
           ()
# 795 "parser.ml"
     in
    _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)) : 'freshtv402)) : 'freshtv404)) : 'freshtv406)

and _menhir_reduce39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "Reducing production loption(separated_nonempty_list(COMMA,tyfield)) -> \n%!";
    let _v : 'tv_loption_separated_nonempty_list_COMMA_tyfield__ = 
# 142 "<standard.mly>"
    ( [] )
# 805 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_tyfield__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run75 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (string)
# 812 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    Printf.fprintf stderr "State 75:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        Printf.fprintf stderr "Shifting (COLON) to state 76\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 826 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 76:\n%!";
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            Printf.fprintf stderr "Shifting (ID) to state 77\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv389 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 838 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let (_v : (
# 2 "parser.mly"
       (string)
# 843 "parser.ml"
            )) = _v in
            ((Printf.fprintf stderr "State 77:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv387 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 851 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let ((type_id : (
# 2 "parser.mly"
       (string)
# 856 "parser.ml"
            )) : (
# 2 "parser.mly"
       (string)
# 860 "parser.ml"
            )) = _v in
            ((Printf.fprintf stderr "Reducing production tyfield -> ID COLON ID \n%!";
            let (_menhir_stack, _menhir_s, (field_id : (
# 2 "parser.mly"
       (string)
# 866 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_tyfield = 
# 89 "parser.mly"
                                        ()
# 872 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tyfield) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 78:\n%!";
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                Printf.fprintf stderr "Shifting (COMMA) to state 79\n%!";
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((Printf.fprintf stderr "State 79:\n%!";
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    Printf.fprintf stderr "Shifting (ID) to state 75\n%!";
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    Printf.fprintf stderr "Initiating error handling\n%!";
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv378)
            | RBRACE | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((Printf.fprintf stderr "Reducing production separated_nonempty_list(COMMA,tyfield) -> tyfield \n%!";
                let (_menhir_stack, _menhir_s, (x : 'tv_tyfield)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_tyfield_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 909 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_tyfield_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv381 * _menhir_state * 'tv_tyfield) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)) : 'freshtv386)) : 'freshtv388)) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 928 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 940 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 27:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 29:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 35:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 37:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 39:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 41:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 43:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 45:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 47:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 31:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "State 49:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_lvalue : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState29 | MenhirState27 | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 7:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            Printf.fprintf stderr "Shifting (DOT) to state 23\n%!";
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | LBRACK ->
            Printf.fprintf stderr "Shifting (LBRACK) to state 8\n%!";
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIVIDE | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
            _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | MenhirState0 | MenhirState121 | MenhirState1 | MenhirState8 | MenhirState9 | MenhirState111 | MenhirState105 | MenhirState98 | MenhirState94 | MenhirState69 | MenhirState14 | MenhirState66 | MenhirState64 | MenhirState15 | MenhirState61 | MenhirState17 | MenhirState55 | MenhirState53 | MenhirState25 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 22:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            Printf.fprintf stderr "Shifting (ASSIGN) to state 25\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 25:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv372)
        | DOT ->
            Printf.fprintf stderr "Shifting (DOT) to state 23\n%!";
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | LBRACK ->
            Printf.fprintf stderr "Shifting (LBRACK) to state 8\n%!";
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIVIDE | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
            _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_exp_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_exp_) = _v in
        ((Printf.fprintf stderr "State 106:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_exp_) : 'tv_separated_nonempty_list_SEMICOLON_exp_) = _v in
        ((Printf.fprintf stderr "Reducing production loption(separated_nonempty_list(SEMICOLON,exp)) -> separated_nonempty_list(SEMICOLON,exp) \n%!";
        let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_exp__ = 
# 144 "<standard.mly>"
    ( x )
# 1363 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv365 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_exp_) = _v in
        ((Printf.fprintf stderr "State 112:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_exp_) : 'tv_separated_nonempty_list_SEMICOLON_exp_) = _v in
        ((Printf.fprintf stderr "Reducing production separated_nonempty_list(SEMICOLON,exp) -> exp SEMICOLON separated_nonempty_list(SEMICOLON,exp) \n%!";
        let (_menhir_stack, _menhir_s, (x : 'tv_exp)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_exp_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1382 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fundec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fundec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_fundec) = _v in
    ((Printf.fprintf stderr "State 103:\n%!";
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv355) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_fundec) : 'tv_fundec) = _v in
    ((Printf.fprintf stderr "Reducing production dec -> fundec \n%!";
    let _v : 'tv_dec = 
# 77 "parser.mly"
           ()
# 1403 "parser.ml"
     in
    _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)

and _menhir_goto_vardec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_vardec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_vardec) = _v in
    ((Printf.fprintf stderr "State 100:\n%!";
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_vardec) : 'tv_vardec) = _v in
    ((Printf.fprintf stderr "Reducing production dec -> vardec \n%!";
    let _v : 'tv_dec = 
# 76 "parser.mly"
           ()
# 1422 "parser.ml"
     in
    _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)

and _menhir_goto_separated_nonempty_list_COMMA_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((Printf.fprintf stderr "State 57:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_exp_) : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((Printf.fprintf stderr "Reducing production loption(separated_nonempty_list(COMMA,exp)) -> separated_nonempty_list(COMMA,exp) \n%!";
        let _v : 'tv_loption_separated_nonempty_list_COMMA_exp__ = 
# 144 "<standard.mly>"
    ( x )
# 1443 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)) : 'freshtv346)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv349 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((Printf.fprintf stderr "State 62:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_exp_) : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((Printf.fprintf stderr "Reducing production separated_nonempty_list(COMMA,exp) -> exp COMMA separated_nonempty_list(COMMA,exp) \n%!";
        let (_menhir_stack, _menhir_s, (x : 'tv_exp)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1462 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
    | _ ->
        _menhir_fail ()

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (string)
# 1471 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    Printf.fprintf stderr "State 6:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "Reducing production loption(separated_nonempty_list(SEMICOLON,exp)) -> \n%!";
    let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_exp__ = 
# 142 "<standard.mly>"
    ( [] )
# 1485 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_SEMICOLON_exp__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "Reducing production list(dec) -> \n%!";
    let _v : 'tv_list_dec_ = 
# 211 "<standard.mly>"
    ( [] )
# 1495 "parser.ml"
     in
    _menhir_goto_list_dec_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 11:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 12\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 2 "parser.mly"
       (string)
# 1513 "parser.ml"
        )) = _v in
        ((Printf.fprintf stderr "State 12:\n%!";
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            Printf.fprintf stderr "Shifting (ASSIGN) to state 69\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1526 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 69:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv330)
        | COLON ->
            Printf.fprintf stderr "Shifting (COLON) to state 13\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1576 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 13:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 14\n%!";
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv331 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1588 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 2 "parser.mly"
       (string)
# 1593 "parser.ml"
                )) = _v in
                ((Printf.fprintf stderr "State 14:\n%!";
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BREAK ->
                    Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                | FOR ->
                    Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                | ID _v ->
                    Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
                | IF ->
                    Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                | INT _v ->
                    Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
                | LET ->
                    Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                | LPAREN ->
                    Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                | MINUS ->
                    Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                | NIL ->
                    Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                | STRING _v ->
                    Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
                | WHILE ->
                    Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    Printf.fprintf stderr "Initiating error handling\n%!";
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv332)
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv333 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1646 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv337 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1658 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 71:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 72\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 2 "parser.mly"
       (string)
# 1685 "parser.ml"
        )) = _v in
        ((Printf.fprintf stderr "State 72:\n%!";
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            Printf.fprintf stderr "Shifting (EQ) to state 73\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1698 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 73:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                Printf.fprintf stderr "Shifting (ARRAY) to state 85\n%!";
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
                ((Printf.fprintf stderr "State 85:\n%!";
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | OF ->
                    Printf.fprintf stderr "Shifting (OF) to state 86\n%!";
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv307) = Obj.magic _menhir_stack in
                    ((Printf.fprintf stderr "State 86:\n%!";
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        Printf.fprintf stderr "Shifting (ID) to state 87\n%!";
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv303)) = Obj.magic _menhir_stack in
                        let (_v : (
# 2 "parser.mly"
       (string)
# 1727 "parser.ml"
                        )) = _v in
                        ((Printf.fprintf stderr "State 87:\n%!";
                        let _menhir_env = _menhir_discard _menhir_env in
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv301)) = Obj.magic _menhir_stack in
                        let ((type_id : (
# 2 "parser.mly"
       (string)
# 1736 "parser.ml"
                        )) : (
# 2 "parser.mly"
       (string)
# 1740 "parser.ml"
                        )) = _v in
                        ((Printf.fprintf stderr "Reducing production ty -> ARRAY OF ID \n%!";
                        let _2 = () in
                        let _1 = () in
                        let _v : 'tv_ty = 
# 86 "parser.mly"
                            ()
# 1748 "parser.ml"
                         in
                        _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv302)) : 'freshtv304)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        Printf.fprintf stderr "Initiating error handling\n%!";
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv305)) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv306)) : 'freshtv308)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    Printf.fprintf stderr "Initiating error handling\n%!";
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv309) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv310)) : 'freshtv312)
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 84\n%!";
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv315) = Obj.magic _menhir_stack in
                let (_v : (
# 2 "parser.mly"
       (string)
# 1772 "parser.ml"
                )) = _v in
                ((Printf.fprintf stderr "State 84:\n%!";
                let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv313) = Obj.magic _menhir_stack in
                let ((type_id : (
# 2 "parser.mly"
       (string)
# 1781 "parser.ml"
                )) : (
# 2 "parser.mly"
       (string)
# 1785 "parser.ml"
                )) = _v in
                ((Printf.fprintf stderr "Reducing production ty -> ID \n%!";
                let _v : 'tv_ty = 
# 84 "parser.mly"
                 ()
# 1791 "parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _v) : 'freshtv314)) : 'freshtv316)
            | LBRACE ->
                Printf.fprintf stderr "Shifting (LBRACE) to state 74\n%!";
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
                ((Printf.fprintf stderr "State 74:\n%!";
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    Printf.fprintf stderr "Shifting (ID) to state 75\n%!";
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
                | RBRACE ->
                    _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    Printf.fprintf stderr "Initiating error handling\n%!";
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv318)
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv319 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1820 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1832 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 89:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 90\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 2 "parser.mly"
       (string)
# 1859 "parser.ml"
        )) = _v in
        ((Printf.fprintf stderr "State 90:\n%!";
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            Printf.fprintf stderr "Shifting (LPAREN) to state 91\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv293 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1872 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 91:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 75\n%!";
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | RPAREN ->
                _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 1896 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)

and _menhir_goto_exp_basic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_basic -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState121 | MenhirState1 | MenhirState8 | MenhirState9 | MenhirState111 | MenhirState105 | MenhirState98 | MenhirState94 | MenhirState69 | MenhirState14 | MenhirState66 | MenhirState64 | MenhirState15 | MenhirState61 | MenhirState17 | MenhirState55 | MenhirState53 | MenhirState20 | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 26:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            Printf.fprintf stderr "Shifting (AND) to state 49\n%!";
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            Printf.fprintf stderr "Shifting (EQ) to state 47\n%!";
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            Printf.fprintf stderr "Shifting (GE) to state 45\n%!";
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            Printf.fprintf stderr "Shifting (GT) to state 43\n%!";
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            Printf.fprintf stderr "Shifting (LE) to state 41\n%!";
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            Printf.fprintf stderr "Shifting (LT) to state 39\n%!";
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            Printf.fprintf stderr "Shifting (NEQ) to state 35\n%!";
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            Printf.fprintf stderr "Shifting (OR) to state 33\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 33:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv214)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp -> exp_basic \n%!";
            let (_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)) = _menhir_stack in
            let _v : 'tv_exp = 
# 49 "parser.mly"
                   ()
# 1989 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 28:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv221 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic TIMES exp_basic \n%!";
        let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_exp_basic = 
# 37 "parser.mly"
                                            ()
# 2012 "parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv229 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 30:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic PLUS exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 35 "parser.mly"
                                           ()
# 2037 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 32:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic DIVIDE exp_basic \n%!";
        let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_exp_basic = 
# 38 "parser.mly"
                                             ()
# 2060 "parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 34:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            Printf.fprintf stderr "Shifting (AND) to state 49\n%!";
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            Printf.fprintf stderr "Shifting (EQ) to state 47\n%!";
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            Printf.fprintf stderr "Shifting (GE) to state 45\n%!";
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            Printf.fprintf stderr "Shifting (GT) to state 43\n%!";
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            Printf.fprintf stderr "Shifting (LE) to state 41\n%!";
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            Printf.fprintf stderr "Shifting (LT) to state 39\n%!";
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            Printf.fprintf stderr "Shifting (NEQ) to state 35\n%!";
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic OR exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 45 "parser.mly"
                                         ()
# 2112 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 36:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic NEQ exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 40 "parser.mly"
                                          ()
# 2151 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 38:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic MINUS exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 36 "parser.mly"
                                            ()
# 2184 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 40:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic LT exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 41 "parser.mly"
                                         ()
# 2223 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 42:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic LE exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 43 "parser.mly"
                                         ()
# 2262 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)) : 'freshtv264)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 44:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic GT exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 42 "parser.mly"
                                         ()
# 2301 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 46:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic GE exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 44 "parser.mly"
                                         ()
# 2340 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 48:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic EQ exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 39 "parser.mly"
                                         ()
# 2379 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 50:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            Printf.fprintf stderr "Shifting (DIVIDE) to state 31\n%!";
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            Printf.fprintf stderr "Shifting (EQ) to state 47\n%!";
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            Printf.fprintf stderr "Shifting (GE) to state 45\n%!";
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            Printf.fprintf stderr "Shifting (GT) to state 43\n%!";
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            Printf.fprintf stderr "Shifting (LE) to state 41\n%!";
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            Printf.fprintf stderr "Shifting (LT) to state 39\n%!";
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 37\n%!";
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            Printf.fprintf stderr "Shifting (NEQ) to state 35\n%!";
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            Printf.fprintf stderr "Shifting (PLUS) to state 29\n%!";
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            Printf.fprintf stderr "Shifting (TIMES) to state 27\n%!";
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp_basic -> exp_basic AND exp_basic \n%!";
            let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp_basic)), _, (e2 : 'tv_exp_basic)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_basic = 
# 46 "parser.mly"
                                          ()
# 2436 "parser.ml"
             in
            _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_exp_basic)) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * _menhir_state) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 119:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv289 * _menhir_state) * _menhir_state * 'tv_exp_basic) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production exp_basic -> MINUS exp_basic \n%!";
        let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_basic)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_exp_basic = 
# 34 "parser.mly"
                         ()
# 2459 "parser.ml"
         in
        _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)) : 'freshtv292)
    | _ ->
        _menhir_fail ()

and _menhir_reduce43 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 2 "parser.mly"
       (string)
# 2468 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    Printf.fprintf stderr "Reducing production lvalue -> ID \n%!";
    let (_menhir_stack, _menhir_s, (_1 : (
# 2 "parser.mly"
       (string)
# 2475 "parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_lvalue = 
# 66 "parser.mly"
                  ()
# 2480 "parser.ml"
     in
    _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_exp__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv211 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 2491 "parser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
    ((Printf.fprintf stderr "State 58:\n%!";
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        Printf.fprintf stderr "Shifting (RPAREN) to state 59\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 2503 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 59:\n%!";
        let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 2511 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production exp -> ID LPAREN loption(separated_nonempty_list(COMMA,exp)) RPAREN \n%!";
        let ((_menhir_stack, _menhir_s, (fun_id : (
# 2 "parser.mly"
       (string)
# 2517 "parser.ml"
        ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_exp__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_exp = let _3 = 
# 232 "<standard.mly>"
    ( xs )
# 2524 "parser.ml"
         in
        
# 50 "parser.mly"
                                                           ()
# 2529 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)) : 'freshtv208)
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv209 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 2540 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 51:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production exp -> lvalue ASSIGN exp \n%!";
        let ((_menhir_stack, _menhir_s, (v : 'tv_lvalue)), _, (e : 'tv_exp)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_exp = 
# 51 "parser.mly"
                                ()
# 2561 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)) : 'freshtv112)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv117 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2569 "parser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 52:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TO ->
            Printf.fprintf stderr "Shifting (TO) to state 53\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv113 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2581 "parser.ml"
            ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 53:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv114)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv115 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2633 "parser.ml"
            ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv123 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2642 "parser.ml"
        ))) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 54:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DO ->
            Printf.fprintf stderr "Shifting (DO) to state 55\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv119 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2654 "parser.ml"
            ))) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 55:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv120)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv121 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2706 "parser.ml"
            ))) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)) : 'freshtv124)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv127 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2715 "parser.ml"
        ))) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 56:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv125 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2722 "parser.ml"
        ))) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production exp -> FOR ID ASSIGN exp TO exp DO exp \n%!";
        let (((((_menhir_stack, _menhir_s), (iter_id : (
# 2 "parser.mly"
       (string)
# 2728 "parser.ml"
        ))), _, (e1 : 'tv_exp)), _, (e2 : 'tv_exp)), _, (e3 : 'tv_exp)) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_exp = 
# 56 "parser.mly"
                                                                    ()
# 2737 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)) : 'freshtv128)
    | MenhirState61 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 60:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            Printf.fprintf stderr "Shifting (COMMA) to state 61\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 61:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv130)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production separated_nonempty_list(COMMA,exp) -> exp \n%!";
            let (_menhir_stack, _menhir_s, (x : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2801 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)) : 'freshtv136)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 63:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            Printf.fprintf stderr "Shifting (THEN) to state 64\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv137 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 64:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv138)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv139 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv149 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 65:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            Printf.fprintf stderr "Shifting (ELSE) to state 66\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv143 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 66:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv144)
        | COMMA | DO | END | EOF | FUNCTION | IN | RBRACK | RPAREN | SEMICOLON | THEN | TO | TYPE | VAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv145 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production exp -> IF exp THEN exp \n%!";
            let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp)), _, (e2 : 'tv_exp)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp = 
# 54 "parser.mly"
                                 ()
# 2936 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv147 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv153 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 67:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv151 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production exp -> IF exp THEN exp ELSE exp \n%!";
        let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp)), _, (e2 : 'tv_exp)), _, (e3 : 'tv_exp)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_exp = 
# 53 "parser.mly"
                                                 ()
# 2961 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv157 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2969 "parser.ml"
        ))) * (
# 2 "parser.mly"
       (string)
# 2973 "parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 68:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv155 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 2980 "parser.ml"
        ))) * (
# 2 "parser.mly"
       (string)
# 2984 "parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production vardec -> VAR ID COLON ID exp \n%!";
        let ((((_menhir_stack, _menhir_s), (var_id : (
# 2 "parser.mly"
       (string)
# 2990 "parser.ml"
        ))), (type_id : (
# 2 "parser.mly"
       (string)
# 2994 "parser.ml"
        ))), _, (e : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_vardec = 
# 94 "parser.mly"
                                                    ()
# 3001 "parser.ml"
         in
        _menhir_goto_vardec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)) : 'freshtv158)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv161 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3009 "parser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 70:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv159 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3016 "parser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production vardec -> VAR ID ASSIGN exp \n%!";
        let (((_menhir_stack, _menhir_s), (var_id : (
# 2 "parser.mly"
       (string)
# 3022 "parser.ml"
        ))), _, (e : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_vardec = 
# 93 "parser.mly"
                                        ()
# 3029 "parser.ml"
         in
        _menhir_goto_vardec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv165 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3037 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 95:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv163 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3044 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production fundec -> FUNCTION ID LPAREN loption(separated_nonempty_list(COMMA,tyfield)) RPAREN EQ exp \n%!";
        let ((((_menhir_stack, _menhir_s), (fun_id : (
# 2 "parser.mly"
       (string)
# 3050 "parser.ml"
        ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)), _, (e : 'tv_exp)) = _menhir_stack in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_fundec = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 3059 "parser.ml"
         in
        
# 98 "parser.mly"
                                                                                                         ()
# 3064 "parser.ml"
         in
        _menhir_goto_fundec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv169 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3072 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 2 "parser.mly"
       (string)
# 3076 "parser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 99:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv167 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3083 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 2 "parser.mly"
       (string)
# 3087 "parser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production fundec -> FUNCTION ID LPAREN loption(separated_nonempty_list(COMMA,tyfield)) RPAREN COMMA ID EQ exp \n%!";
        let (((((_menhir_stack, _menhir_s), (fun_id : (
# 2 "parser.mly"
       (string)
# 3093 "parser.ml"
        ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_tyfield__)), (type_id : (
# 2 "parser.mly"
       (string)
# 3097 "parser.ml"
        ))), _, (e : 'tv_exp)) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_fundec = let type_fields = 
# 232 "<standard.mly>"
    ( xs )
# 3107 "parser.ml"
         in
        
# 99 "parser.mly"
                                                                                                                                ()
# 3112 "parser.ml"
         in
        _menhir_goto_fundec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
    | MenhirState9 | MenhirState111 | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 110:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            Printf.fprintf stderr "Shifting (SEMICOLON) to state 111\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 111:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv172)
        | END | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv173 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production separated_nonempty_list(SEMICOLON,exp) -> exp \n%!";
            let (_menhir_stack, _menhir_s, (x : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_exp_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3176 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv185 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 117:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACK ->
            Printf.fprintf stderr "Shifting (RBRACK) to state 118\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv181 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 118:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv179 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production lvalue -> lvalue LBRACK exp RBRACK \n%!";
            let ((_menhir_stack, _menhir_s, (v : 'tv_lvalue)), _, (e : 'tv_exp)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_lvalue = 
# 68 "parser.mly"
                                         ()
# 3209 "parser.ml"
             in
            _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv183 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 120:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DO ->
            Printf.fprintf stderr "Shifting (DO) to state 121\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 121:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)) : 'freshtv192)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv195 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 122:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv193 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "Reducing production exp -> WHILE exp DO exp \n%!";
        let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp)), _, (e2 : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_exp = 
# 55 "parser.mly"
                                  ()
# 3294 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)) : 'freshtv196)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 125:\n%!";
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            Printf.fprintf stderr "Shifting (EOF) to state 126\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 126:\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "Reducing production program -> exp EOF \n%!";
            let (_menhir_stack, _menhir_s, (v : 'tv_exp)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "parser.mly"
       (unit)
# 3317 "parser.ml"
            ) = 
# 24 "parser.mly"
                ( )
# 3321 "parser.ml"
             in
            _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv33 * _menhir_state) * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_dec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state) * _menhir_state * 'tv_decs)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv41 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3363 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) * (
# 2 "parser.mly"
       (string)
# 3367 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv43 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3376 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_tyfield__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3385 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_tyfield)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv50)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3403 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv53 * _menhir_state) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state) * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv59 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3427 "parser.ml"
        ))) * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3436 "parser.ml"
        ))) * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_exp_basic)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3510 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 3519 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv95 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3533 "parser.ml"
        ))) * (
# 2 "parser.mly"
       (string)
# 3537 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv108)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 1:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | FOR ->
        Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | IF ->
        Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | LET ->
        Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | LPAREN ->
        Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | WHILE ->
        Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (string)
# 3620 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    Printf.fprintf stderr "State 2:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((str : (
# 4 "parser.mly"
       (string)
# 3631 "parser.ml"
    )) : (
# 4 "parser.mly"
       (string)
# 3635 "parser.ml"
    )) = _v in
    ((Printf.fprintf stderr "Reducing production exp_basic -> STRING \n%!";
    let _v : 'tv_exp_basic = 
# 33 "parser.mly"
                 ()
# 3641 "parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 3:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((Printf.fprintf stderr "Reducing production exp_basic -> NIL \n%!";
    let _1 = () in
    let _v : 'tv_exp_basic = 
# 31 "parser.mly"
        ()
# 3657 "parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 4:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 6\n%!";
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 9:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | FOR ->
        Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | IF ->
        Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | LET ->
        Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LPAREN ->
        Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | WHILE ->
        Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | RPAREN ->
        _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 10:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        Printf.fprintf stderr "Shifting (FUNCTION) to state 89\n%!";
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TYPE ->
        Printf.fprintf stderr "Shifting (TYPE) to state 71\n%!";
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | VAR ->
        Printf.fprintf stderr "Shifting (VAR) to state 11\n%!";
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | IN ->
        _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (int)
# 3764 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    Printf.fprintf stderr "State 5:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 3 "parser.mly"
       (int)
# 3775 "parser.ml"
    )) : (
# 3 "parser.mly"
       (int)
# 3779 "parser.ml"
    )) = _v in
    ((Printf.fprintf stderr "Reducing production exp_basic -> INT \n%!";
    let _v : 'tv_exp_basic = 
# 32 "parser.mly"
            ()
# 3785 "parser.ml"
     in
    _menhir_goto_exp_basic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 15:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FOR ->
        Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | IF ->
        Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LET ->
        Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LPAREN ->
        Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | WHILE ->
        Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (string)
# 3838 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    Printf.fprintf stderr "State 16:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        Printf.fprintf stderr "Shifting (LPAREN) to state 17\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 3852 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((Printf.fprintf stderr "State 17:\n%!";
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BREAK ->
            Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | FOR ->
            Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ID _v ->
            Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | IF ->
            Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | INT _v ->
            Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | LET ->
            Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LPAREN ->
            Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | MINUS ->
            Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | NIL ->
            Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | STRING _v ->
            Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | WHILE ->
            Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState17 in
            ((Printf.fprintf stderr "Reducing production loption(separated_nonempty_list(COMMA,exp)) -> \n%!";
            let _v : 'tv_loption_separated_nonempty_list_COMMA_exp__ = 
# 142 "<standard.mly>"
    ( [] )
# 3899 "parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv24)
    | AND | ASSIGN | COMMA | DIVIDE | DO | DOT | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LBRACK | LE | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | SEMICOLON | THEN | TIMES | TO | TYPE | VAR ->
        _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 2 "parser.mly"
       (string)
# 3917 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 18:\n%!";
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 19\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 2 "parser.mly"
       (string)
# 3936 "parser.ml"
        )) = _v in
        ((Printf.fprintf stderr "State 19:\n%!";
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            Printf.fprintf stderr "Shifting (ASSIGN) to state 20\n%!";
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 3949 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((Printf.fprintf stderr "State 20:\n%!";
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BREAK ->
                Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | FOR ->
                Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | ID _v ->
                Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | IF ->
                Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | INT _v ->
                Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | LET ->
                Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | LPAREN ->
                Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | MINUS ->
                Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | NIL ->
                Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | STRING _v ->
                Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | WHILE ->
                Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (not _menhir_env._menhir_error);
                Printf.fprintf stderr "Initiating error handling\n%!";
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            Printf.fprintf stderr "Initiating error handling\n%!";
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state) * (
# 2 "parser.mly"
       (string)
# 4001 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "parser.mly"
       (unit)
# 4017 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 20 "parser.mly"
       (unit)
# 4026 "parser.ml"
    )) = _v in
    ((Printf.fprintf stderr "State 124:\n%!";
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 20 "parser.mly"
       (unit)
# 4035 "parser.ml"
    )) : (
# 20 "parser.mly"
       (unit)
# 4039 "parser.ml"
    )) = _v in
    ((Printf.fprintf stderr "Accepting\n%!";
    Obj.magic _1) : 'freshtv10)) : 'freshtv12)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    Printf.fprintf stderr "State 21:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((Printf.fprintf stderr "Reducing production exp -> BREAK \n%!";
    let _1 = () in
    let _v : 'tv_exp = 
# 57 "parser.mly"
          ()
# 4056 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    Printf.fprintf stderr "Lookahead token is now %s (%d-%d)\n%!" (let (_tok : token) = _tok in
    ((match _tok with
    | AND ->
        "AND"
    | ARRAY ->
        "ARRAY"
    | ASSIGN ->
        "ASSIGN"
    | BREAK ->
        "BREAK"
    | COLON ->
        "COLON"
    | COMMA ->
        "COMMA"
    | DIVIDE ->
        "DIVIDE"
    | DO ->
        "DO"
    | DOT ->
        "DOT"
    | ELSE ->
        "ELSE"
    | END ->
        "END"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | FOR ->
        "FOR"
    | FUNCTION ->
        "FUNCTION"
    | GE ->
        "GE"
    | GT ->
        "GT"
    | ID _ ->
        "ID"
    | IF ->
        "IF"
    | IN ->
        "IN"
    | INT _ ->
        "INT"
    | LBRACE ->
        "LBRACE"
    | LBRACK ->
        "LBRACK"
    | LE ->
        "LE"
    | LET ->
        "LET"
    | LPAREN ->
        "LPAREN"
    | LT ->
        "LT"
    | MINUS ->
        "MINUS"
    | NEQ ->
        "NEQ"
    | NIL ->
        "NIL"
    | OF ->
        "OF"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | RBRACE ->
        "RBRACE"
    | RBRACK ->
        "RBRACK"
    | RPAREN ->
        "RPAREN"
    | SEMICOLON ->
        "SEMICOLON"
    | STRING _ ->
        "STRING"
    | THEN ->
        "THEN"
    | TIMES ->
        "TIMES"
    | TO ->
        "TO"
    | TYPE ->
        "TYPE"
    | VAR ->
        "VAR"
    | WHILE ->
        "WHILE") : string)) lexbuf.Lexing.lex_start_p.Lexing.pos_cnum lexbuf.Lexing.lex_curr_p.Lexing.pos_cnum;
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 20 "parser.mly"
       (unit)
# 4165 "parser.ml"
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
    ((Printf.fprintf stderr "State 0:\n%!";
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        Printf.fprintf stderr "Shifting (BREAK) to state 21\n%!";
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        Printf.fprintf stderr "Shifting (EOF) to state 123\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((Printf.fprintf stderr "State 123:\n%!";
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((Printf.fprintf stderr "Reducing production program -> EOF \n%!";
        let _1 = () in
        let _v : (
# 20 "parser.mly"
       (unit)
# 4202 "parser.ml"
        ) = 
# 25 "parser.mly"
       ( )
# 4206 "parser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | FOR ->
        Printf.fprintf stderr "Shifting (FOR) to state 18\n%!";
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        Printf.fprintf stderr "Shifting (ID) to state 16\n%!";
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        Printf.fprintf stderr "Shifting (IF) to state 15\n%!";
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        Printf.fprintf stderr "Shifting (INT) to state 5\n%!";
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        Printf.fprintf stderr "Shifting (LET) to state 10\n%!";
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        Printf.fprintf stderr "Shifting (LPAREN) to state 9\n%!";
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        Printf.fprintf stderr "Shifting (MINUS) to state 4\n%!";
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NIL ->
        Printf.fprintf stderr "Shifting (NIL) to state 3\n%!";
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | STRING _v ->
        Printf.fprintf stderr "Shifting (STRING) to state 2\n%!";
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | WHILE ->
        Printf.fprintf stderr "Shifting (WHILE) to state 1\n%!";
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        Printf.fprintf stderr "Initiating error handling\n%!";
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

# 269 "<standard.mly>"
  

# 4248 "parser.ml"
