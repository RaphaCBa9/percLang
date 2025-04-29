# Uma Linguagem de Programação para Arranjos de Percussão

## Descrição Geral

Este projeto é uma linguagem de programação criada para transformar estruturas simples de código em arranjos de percussão.

O objetivo é permitir que músicos, programadores ou interessados possam descrever sequências ríticas de maneira simples, utilizando toques (`D`, `E`, `pausa`) e rudimentos tradicionais da bateria, com suporte a loops e controle de tempo (BPM).

Cada programa escrito em PercLang é interpretado e gera como saída um arquivo `.txt`, representando a sequência rítmica no formato de partitura simplificada, sinalizando cada tempo com `|`.

---

## 🌟 Funcionalidades
- Definição de tempo (BPM)
- Execução de toques (`D`, `E`, `pausa`)
- Uso de rudimentos como comandos (`paradiddle`, `flam`, `doubleStroke`, etc.)
- Estruturas de repetição (`loop`)
- Saída formatada com marcação visual dos tempos

---

## Sintaxe — Exemplo de Programa

```text
tempo 120 {
    loop 4 {
        paradiddle
    }
}
```

**Proposta de saída gerada (`.txt`):**

```text
120bpm: | D E D D E D E E | D E D D E D E E | D E D D E D E E | D E D D E D E E |
```

---

## 🛠️ Gramática Formal (EBNF)

```ebnf
programa      = tempo bloco ;

tempo         = "tempo" numero "{" bloco "}" ;

bloco         = { comando } ;

comando       = toque | rudimento | loop ;

toque         = ("D" | "E" | "pausa") ;

rudimento     = ("paradiddle" | "flam" | "doubleStroke" | "singleStroke" | "drag" | "roll") ;

loop          = "loop" numero "{" bloco "}" ;

numero        = dígito { dígito } ;

dígito        = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;
```

