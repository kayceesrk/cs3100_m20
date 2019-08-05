# λ

[Lambda calculus](https://en.wikipedia.org/wiki/Lambda_calculus) interpreter in OCaml

## Build

`make`

## Usage

`./lambda.byte test.lambda`

## Example: 1 + 1 = 2

```
(λm.λn.λf.λx.m f (n f x)) (λf.λx.f x) (λf.λx.f x)
= (λn.λf2.λx2.(λf.λx.f x) f2 (n f2 x2)) (λf.λx.f x)
= λf2.λx2.(λf3.λx3.f3 x3) f2 ((λf.λx.f x) f2 x2)
= λf2.λx2.(λx3.f2 x3) ((λx.f2 x) x2)
= λf2.λx2.f2 ((λx.f2 x) x2)
= λf2.λx2.f2 (f2 x2)
```
