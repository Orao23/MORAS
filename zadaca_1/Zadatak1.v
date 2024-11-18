Set Implicit Arguments.
Require Import Setoid.
Require Import Lia.
Require Import Coq.Arith.Arith.

Goal forall x y : bool, orb (orb (andb x (negb y)) (andb (negb x) (negb y))) (andb (negb x) y) = negb (andb x y).
Proof.
intros x y. destruct x, y; simpl; reflexivity.
Qed.

Goal forall x y z : bool, andb (andb (negb (andb (andb (negb x) y) z)) (negb (andb (andb x y) (negb z)))) (andb (andb x (negb y)) z) = andb (andb x (negb y)) z.
Proof.
intros. destruct x, y, z; simpl; reflexivity.
Qed.