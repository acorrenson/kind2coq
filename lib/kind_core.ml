(** Kind terms *)
type term =
  | Typ
  | Var of { name: string; indx: int }
  | Ref of { name: string }
  | App of { func: term; argm: term }
  | All of { eras: bool; self: term; name: string; bind: term; body: term }
  | Let of { name: term; expr: term; body: term }
  | Nat of { natx: int }
  | Str of { strx: string }
  | Chr of { chrx: char }
