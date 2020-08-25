
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TIMES
    | SEMICOLON
    | RPAREN
    | PRINT
    | PLUS
    | MINUS
    | LPAREN
    | INT of (
# 8 "slfun3.mly"
       (int)
# 18 "slfun3.ml"
  )
    | ID of (
# 9 "slfun3.mly"
       (string)
# 23 "slfun3.ml"
  )
    | EOF
    | DIV
    | COMMA
    | ASSIGN
  
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
  | MenhirState26
  | MenhirState19
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState11
  | MenhirState8
  | MenhirState6
  | MenhirState3
  | MenhirState2
  | MenhirState0

# 1 "slfun3.mly"
  
  let update (table,id,num) : string -> int =
     fun j -> if j=id then num else table(j)
  let emptytable : string -> int =
     fun j -> raise (Failure ("uninitialized var: "^ j))

# 64 "slfun3.ml"

let rec _menhir_run8 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_stm -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | PRINT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_goto_exps : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exps -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv130 * _menhir_state)) * _menhir_state * 'tv_exps) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv122 * _menhir_state * 'tv_exps) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | INT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | PRINT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv123)
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv126 * _menhir_state)) * _menhir_state * 'tv_exps) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv124 * _menhir_state)) * _menhir_state * 'tv_exps) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exps)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_stm = 
# 34 "slfun3.mly"
  ( fun t ->  (es t) )
# 119 "slfun3.ml"
         in
        _menhir_goto_stm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv125)) : 'freshtv127)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv128 * _menhir_state)) * _menhir_state * 'tv_exps) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv129)) : 'freshtv131)

and _menhir_goto_stm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 | MenhirState2 | MenhirState3 | MenhirState19 | MenhirState17 | MenhirState15 | MenhirState13 | MenhirState11 | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv94 * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv90 * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | INT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | PRINT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv91)
        | SEMICOLON ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv92 * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv93)) : 'freshtv95)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv100 * _menhir_state * 'tv_stm)) * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv96 * _menhir_state * 'tv_stm)) * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s1 : 'tv_stm)), _, (s2 : 'tv_stm)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_stm = 
# 26 "slfun3.mly"
  ( fun t -> let t1, p1 = s1 t in
             let t2, p2 = s2 t1 in
               (t2,p1@p2) )
# 185 "slfun3.ml"
             in
            _menhir_goto_stm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv97)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv98 * _menhir_state * 'tv_stm)) * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv99)) : 'freshtv101)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv120 * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv116 * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv114 * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (s : 'tv_stm)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_prog = 
# 22 "slfun3.mly"
                           ( s(emptytable) )
# 211 "slfun3.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv112) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_prog) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv110) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_prog) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv108) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((p : 'tv_prog) : 'tv_prog) = _v in
            ((let _v : (
# 15 "slfun3.mly"
       (int list)
# 228 "slfun3.ml"
            ) = 
# 19 "slfun3.mly"
                               ( snd p )
# 232 "slfun3.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv106) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 15 "slfun3.mly"
       (int list)
# 240 "slfun3.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv104) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 15 "slfun3.mly"
       (int list)
# 248 "slfun3.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv102) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 15 "slfun3.mly"
       (int list)
# 256 "slfun3.ml"
            )) : (
# 15 "slfun3.mly"
       (int list)
# 260 "slfun3.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv103)) : 'freshtv105)) : 'freshtv107)) : 'freshtv109)) : 'freshtv111)) : 'freshtv113)) : 'freshtv115)) : 'freshtv117)
        | SEMICOLON ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv118 * _menhir_state * 'tv_stm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv119)) : 'freshtv121)

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | PRINT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | PRINT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | PRINT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | PRINT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * 'tv_stm)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv37 * _menhir_state * 'tv_stm)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s : 'tv_stm)), _, (e : 'tv_exp)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp = 
# 65 "slfun3.mly"
  ( fun t -> let new_tab, p1 = s t in 
             let cur_tab, v, p2 = e new_tab in
              (cur_tab, v, p1@p2) )
# 373 "slfun3.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv39 * _menhir_state * 'tv_stm)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp)), _, (e2 : 'tv_exp)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_exp = 
# 57 "slfun3.mly"
  ( fun t -> let new_tab, v1, p1 = e1 t in
             let cur_tab, v2, p2 = e2 new_tab in 
              (cur_tab, v1 * v2, p1@p2) )
# 395 "slfun3.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv44)) : 'freshtv46)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | MINUS | PLUS | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp)), _, (e2 : 'tv_exp)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp = 
# 49 "slfun3.mly"
  ( fun t -> let new_tab, v1, p1 = e1 t in
             let cur_tab, v2, p2 = e2 new_tab in 
              (cur_tab, v1 + v2, p1@p2) )
# 418 "slfun3.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv48)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv49 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp)), _, (e2 : 'tv_exp)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_exp = 
# 61 "slfun3.mly"
  ( fun t -> let new_tab, v1, p1 = e1 t in
             let cur_tab, v2, p2 = e2 new_tab in 
              (cur_tab, v1 / v2, p1@p2) )
# 440 "slfun3.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)) : 'freshtv56)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | MINUS | PLUS | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv57 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_exp)), _, (e2 : 'tv_exp)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp = 
# 53 "slfun3.mly"
  ( fun t -> let new_tab, v1, p1 = e1 t in
             let cur_tab, v2, p2 = e2 new_tab in 
              (cur_tab, v1 - v2, p1@p2) )
# 463 "slfun3.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv59 * _menhir_state * 'tv_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state * (
# 9 "slfun3.mly"
       (string)
# 478 "slfun3.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv63 * _menhir_state * (
# 9 "slfun3.mly"
       (string)
# 496 "slfun3.ml"
            ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s : (
# 9 "slfun3.mly"
       (string)
# 501 "slfun3.ml"
            ))), _, (e : 'tv_exp)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_stm = 
# 30 "slfun3.mly"
  ( fun t -> let new_tab, v, p = e t in
             let cur_tab = update (new_tab, s, v) in
                (cur_tab, p) )
# 509 "slfun3.ml"
             in
            _menhir_goto_stm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv64)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv65 * _menhir_state * (
# 9 "slfun3.mly"
       (string)
# 519 "slfun3.ml"
            ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)) : 'freshtv68)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv71 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv69 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp = 
# 69 "slfun3.mly"
  ( e )
# 547 "slfun3.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)) : 'freshtv72)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_exps)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv77 * _menhir_state * 'tv_exps)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (es : 'tv_exps)), _, (e : 'tv_exp)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exps = 
# 41 "slfun3.mly"
  ( fun t -> let new_tab, p1 = es t in
             let now_tab, v1, p2 = e new_tab in
              (now_tab, p1@p2@[v1]) )
# 583 "slfun3.ml"
             in
            _menhir_goto_exps _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv79 * _menhir_state * 'tv_exps)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp)) = _menhir_stack in
            let _v : 'tv_exps = 
# 37 "slfun3.mly"
          (fun t ->
              let new_tab, v, p = e t in
              (new_tab,p@[v]) )
# 616 "slfun3.ml"
             in
            _menhir_goto_exps _menhir_env _menhir_stack _menhir_s _v) : 'freshtv84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | _ ->
        let (() : unit) = () in
        ((Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
        assert false) : 'freshtv89)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | PRINT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "slfun3.mly"
       (int)
# 653 "slfun3.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 8 "slfun3.mly"
       (int)
# 663 "slfun3.ml"
    )) : (
# 8 "slfun3.mly"
       (int)
# 667 "slfun3.ml"
    )) = _v in
    ((let _v : 'tv_exp = 
# 46 "slfun3.mly"
              ( fun t -> (t, i, []) )
# 672 "slfun3.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "slfun3.mly"
       (string)
# 679 "slfun3.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
    | COMMA | DIV | EOF | MINUS | PLUS | RPAREN | SEMICOLON | TIMES ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 9 "slfun3.mly"
       (string)
# 693 "slfun3.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (id : (
# 9 "slfun3.mly"
       (string)
# 698 "slfun3.ml"
        ))) = _menhir_stack in
        let _v : 'tv_exp = 
# 47 "slfun3.mly"
              ( fun t -> (t,t(id), []) )
# 703 "slfun3.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * (
# 9 "slfun3.mly"
       (string)
# 713 "slfun3.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)

and _menhir_run6 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 9 "slfun3.mly"
       (string)
# 721 "slfun3.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | PRINT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv9 * _menhir_state * 'tv_exps)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv11 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_stm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_stm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * (
# 9 "slfun3.mly"
       (string)
# 783 "slfun3.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv30)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | INT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PRINT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "slfun3.mly"
       (string)
# 837 "slfun3.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state * (
# 9 "slfun3.mly"
       (string)
# 853 "slfun3.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv4)

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
# 15 "slfun3.mly"
       (int list)
# 873 "slfun3.ml"
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
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | PRINT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 904 "slfun3.ml"
