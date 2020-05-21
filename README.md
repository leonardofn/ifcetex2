![alt tag](https://raw.githubusercontent.com/leonardofn/ifcetex2/ifcetex2/figuras/ifcetex2-logo.png)

# ABNTeX2

A classe [**ABNTeX2**](https://github.com/abntex/abntex2) é uma classe derivada da classe memoir do LaTeX desenvolvida por Lauro César Araujo e outros. Tem como objetivo gerar documentos que, tanto quanto possível, respeitem as normas da ABNT relativas à elaboração de trabalhos acadêmicos. Além disso, o projeto ABNTeX2 disponibiliza o pacote abntex2cite que gera citações bibliográficas compatíveis com os padrões recomendados pela ABNT. As distribuições de LaTeX a partir das versões de 2013 já contêm os arquivos necessários e, por isso, o seu uso não requer a inclusão de nenhuma classe ou pacote que não esteja contido nas distribuições **MikTeX** e **TeXLive**. Esta classe pode ser usada tanto com o pdflatex quanto com o lualatex.

# O que é o IFCETeX2?

O **IFCETeX2** é um projeto ramificado do [**UECETeX2**](https://github.com/thiagodnf/uecetex2), repositório mantido por [**Thiago Nascimento**](https://github.com/thiagodnf) e destinado a UECE (Universidade Estadual do Ceará). Ambos os projetos são baseados no ABNTeX2. O IFCETeX2 foi desenvolvido para auxiliar os discentes do Instituto Federal de Educação, Ciência e Tecnologia do Ceará (IFCE) em seus trabalhos de monografias de graduação, dissertações de mestrado e teses de doutorado. Entretanto, o IFCETeX2 é suficientemente configurável e facilmente adaptável para ser utilizada em praticamente todos os campi do Instituto Federal no Brasil. Espera-se que o projeto seja um modelo de trabalho acadêmico que implemente todas as exigências das normas da ABNT sem a necessidade de se preocupar com o estilo ou formatação do documento.

### Modelos disponíveis

**Trabalhos Acadêmicos**

 - Trabalho de Conclusão de Curso de Graduação
 - Trabalho de Conclusão de Curso de Especialização
 - Dissertação de Mestrado Acadêmico
 - Tese de Doutorado

# Por onde começo?

Para utilizar o IFCETeX2 você precisa seguir os seguintes passos:

1. Clique [aqui](https://github.com/leonardofn/ifcetex2/archive/master.zip) para baixar o projeto;
2. Descompacte o arquivo no diretório onde você deseja guardar os arquivos do seu trabalho;
3. Crie o seu texto a partir do arquivo *documento.tex* distribuído no arquivo baixado. O arquivo contém diversos comentários relativos aos diversos comandos e pacotes utilizados, que devem facilitar o uso e entendimento.

> Você é iniciante em LaTeX ou em abnTeX2? Clique [aqui](https://github.com/abntex/abntex2/wiki/PorOndeComecar) para acessar a página do repositório do projeto mantido equipe do abnTeX2. Nesta página é possível acessar diversos links sobre o LaTeX e sobre o abnTeX2 como, por exemplo, a história do LaTeX e alguns minicursos desenvolvidos em outras universidades, modelos prontos de trabalhos acadêmicos, elaboração de referências, etc.

# Como compilar?

Uma vez que todas as informações foram colocadas no documento, você precisará de um programa para compilar e gerar o PDF do seu trabalho.

### Windows
 - Acesse [https://github.com/thiagodnf/uecetex2/wiki/Como-instalar-no-Windows] 
 
### Linux

 - Acesse [https://github.com/thiagodnf/uecetex2/wiki/Como-instalar-no-Linux] 
 
# Limitações conhecidas
 
 O modelo atual possui algumas limitações que podem ser corrigidas ou implementadas em alguma versão futura. São elas:
 
  - O modelo permite a participação de somente um coorientador;
  - A folha de aprovação da Dissertação e Tese suporta no máximo 6 pessoas (Orientador, Coorientador e 4 membros externos);
  - A inserção dos elementos quadro e algoritmo não encontram-se implementados.
  
# Dicas

Veja a seguir como inserir alguns elementos no seu texto.

### Como inserir uma tabela

```tex
\begin{table}[H]	
	\centering
	\IFCEtab{
		\Caption{\label{tab:label_da_tabela} Legenda da Tabela}
	}{
	\begin{tabular}{ccll}
		\toprule
			Quisque & pharetra & tempus & vulputate \\
		\toprule
			E1 & Complete coverage & Both splice sites \\
			E2 & Complete coverage & Both splice sites \\
			E3 & Partial coverage & Both splice sites & Both \\
			E4 & Partial coverage & One splice site & Both \\
			E5 & Complete or coverage & No splice & Both \\
			E6 & No coverage & No splice sites\\
		\bottomrule
	\end{tabular}
	}{
		\Fonte{Elaborado pelo autor.}
    }
\end{table}
```

### Como inserir uma ilustração

```tex
\begin{figure}[H]
	\centering	
	\IFCEfig{
		\Caption{\label{fig:label_da_figura} Legenda da Figura}
	}{
	    \includegraphics{figuras/figura-1}
	}{
	    \Fonte{Elaborado pelo autor.}
	}	
\end{figure}
```

### Como inserir uma alínea

```tex
\begin{alineas}
	\item Lorem ipsum dolor sit amet;
    \item Praesent vitae nulla varius;
	\item Praesent quis erat eleifend;
	\item Mauris facilisis odio eu:
	\begin{subalineas}
		\item Integer non lacinia magna;
		\item Proin mattis placerat risus.
	\end{subalineas}
\end{alineas}
```

### Como criar Capítulos

```tex
\chapter{Fundamentação Teórica}
\label{cap:fundamentacao-teorica}
```

### Como criar Seções

```tex
% Seções Secundárias
\section{Objetivo Geral 2}
\label{sec:objetivo-geral-2}

% Seções Terciárias
\subsection{Objetivo Geral 3}
\label{sec:objetivo-geral-3}

% Seções Quaternárias
\subsubsection{Objetivo Geral 4}
\label{sec:objetivo-geral-4}

% Seções Quinárias
\subsubsubsection{Objetivo Geral 5}
\label{sec:objetivo-geral-5}
```
# Supporte ao Inglês

Se o seu trabalho será escrito em inglês, adicione o seguinte comando depois do \begin{document}

```tex
\selectlanguage{english}
```

# Atenção

O IFCETeX2 é fornecido gratuitamente e sem garantias e pode ser redistribuído livremente para fins acadêmicos. O IFCETeX2 é um produto extraoficial e não está oficialmente vinculada ao Instituto Federal do Ceará (IFCE).