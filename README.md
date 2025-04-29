# 🥛 PercLang - Uma Linguagem de Programação para Arranjos de Percussão

## 📚 Descrição Geral

**PercLang** é uma linguagem de programação criada para transformar estruturas simples de código em arranjos de percussão.

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

## 📝 Sintaxe — Exemplo de Programa PercLang

```text
tempo 120 {
    loop 4 {
        paradiddle
    }
}
```

**Saída gerada (`.txt`):**

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

---

## 🔥 Rudimentos Disponíveis

| Rudimento | Expansão (exemplo) |
|:---|:---|
| paradiddle | D E D D E D E E |
| flam | D |
| doubleStroke | D D E E |
| singleStroke | D E D E |
| drag | D E D |
| roll | D D D D E E E E |

*(Novos rudimentos podem ser facilmente adicionados.)*

---

## 📦 Estrutura de Pastas Sugerida

```
PercLang/
├── src/
│   ├── lexer.l       # Analisador Léxico (Flex)
│   ├── parser.y      # Analisador Sintático (Bison)
│   └── main.cpp      # Interpretador e Gerador de Saída
├── examples/
│   └── sample.perc   # Exemplo de programa PercLang
├── README.md
├── Makefile          # (opcional) Para facilitar build
└── output/
    └── result.txt    # Arquivo gerado pela execução
```

---

## 🚀 Tecnologias Utilizadas
- **Flex** — Analisador Léxico
- **Bison** — Analisador Sintático
- **C++** — Interpretador e Gerador de Saída

---

## 📈 Status Atual

- [x] Definição da EBNF
- [ ] Implementação do Analisador Léxico
- [ ] Implementação do Analisador Sintático
- [ ] Construção do Interpretador
- [ ] Criação de Exemplos de Programas
- [ ] Finalização da Documentação

---

# 🎵 Let's groove!

