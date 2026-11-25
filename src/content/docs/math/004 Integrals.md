---
title: '004 Integrals'
description: '99% 的内容来自 deepseek V4.1 flash 生成。'
publishDate: 2026-10-27 18:15:00
tags:
  - Code
  - Learn
language: '中文'
heroImage: { src: '../../../public/covers/Wanlingce.webp', color: '#edb9a2' }
order: 4
---
# Part 4 积分

## 原函数与不定积分的概念

### 定义

如果区间 $I$ 上的可导函数 $F(x)$ 满足

$$
F'(x) = f(x),\quad x \in I
$$

就称 $F(x)$ 是 $f(x)$ 在 $I$ 上的一个**原函数**. $f(x)$ 的全体原函数记作

$$
\int f(x)\,dx = F(x) + C
$$

叫 $f(x)$ 的**不定积分**，其中 $C$ 是任意常数.

$\int$ 叫积分号，$f(x)$ 叫被积函数，$f(x)\,dx$ 叫被积表达式，$x$ 叫积分变量. 三者缺一不可.

### 定理

**定理（原函数存在）** 若 $f(x)$ 在区间 $I$ 上连续，则 $f(x)$ 在 $I$ 上一定存在原函数.

**定理（原函数的结构）** 若 $F(x)$ 是 $f(x)$ 的一个原函数，则 $f(x)$ 的全体原函数恰好是

$$
F(x) + C \qquad (C \text{ 为任意常数})
$$

### 几何意义

$F(x)$ 是一条具体的曲线，$F(x) + C$ 是把这条曲线**沿 $y$ 轴上下平移**得到的一整族曲线，形状完全相同.

同一横坐标 $x$ 处，这族曲线上的切线互相**平行**（斜率都等于 $f(x)$）. 所以"求过某点的那条积分曲线"就是在定常数 $C$：几何问题落地成代数问题.

### 备注

**积分与求导互为逆运算**，两个方向都要背：

$$
\left(\int f(x)\,dx\right)' = f(x),
\qquad
\int f'(x)\,dx = f(x) + C
$$

第二个式子末尾的 $+C$ 不能丢：求导会把常数抹掉，积分之后必须把常数补回来.

**$dx$ 不能省**. $\int f(x)$ 是错写法，$dx$ 声明"对哪个变量积分". 换元时这个 $dx$ 就是操作对象（凑微分全靠它）.

**不定积分的结果是一族函数，不是一个数**. 这一点和定积分（一个数）是根本区别，考试写"$\int f(x)\,dx = F(x)$"直接扣分.

### 例题 1

验证 $F(x) = x\ln x - x$ 是 $f(x) = \ln x$ 在 $(0, +\infty)$ 上的原函数，并写出 $\int \ln x\,dx$.

### 例题解答 1

"验证"就是求导：

$$
F'(x) = \ln x + x\cdot\frac{1}{x} - 1 = \ln x + 1 - 1 = \ln x = f(x)
$$

所以

$$
\int \ln x\,dx = x\ln x - x + C
$$

### 例题 2

已知 $f(x)$ 的一个原函数是 $e^{-x}$，求 $\int x f'(x)\,dx$.

### 例题解答 2

先由"原函数"反推出 $f$ 本身：

$$
f(x) = \left(e^{-x}\right)' = -e^{-x}
$$

再分部积分：

$$
\int x f'(x)\,dx = x f(x) - \int f(x)\,dx = -x e^{-x} - e^{-x} + C
$$

这里 $\int f(x)\,dx$ 就是"$f$ 的一个原函数"，题目已经给了 $e^{-x}$，不必再积. 这是概念题最常见的送分点.

### 例题 3

已知 $\int f(x)\,dx = x^{2}e^{x} + C$，求 $f(x)$ 与 $f'(x)$.

### 例题解答 3

对等式两边求导，$C$ 消失：

$$
f(x) = \left(x^{2}e^{x}\right)' = 2xe^{x} + x^{2}e^{x} = \left(x^{2} + 2x\right)e^{x}
$$

再求一次导：

$$
f'(x) = (2x + 2)e^{x} + \left(x^{2} + 2x\right)e^{x} = \left(x^{2} + 4x + 2\right)e^{x}
$$

### 例题 4

已知 $f'(x) = 3x^{2}$，且曲线 $y = f(x)$ 过点 $(1, 2)$，求 $f(x)$.

### 例题解答 4

先积出全体原函数：

$$
f(x) = \int 3x^{2}\,dx = x^{3} + C
$$

代点定 $C$：

$$
f(1) = 1 + C = 2 \Longrightarrow C = 1
$$

所以

$$
f(x) = x^{3} + 1
$$

### 例题 5

求 $\int \lvert x\rvert\,dx$.

### 例题解答 5

被积函数是分段的，先分段积：

$$
\int \lvert x\rvert\,dx =
\begin{cases}
\dfrac{x^{2}}{2} + C_1, & x \ge 0 \\[8pt]
-\dfrac{x^{2}}{2} + C_2, & x < 0
\end{cases}
$$

原函数在 $x = 0$ 处必须连续（可导必连续），左右两侧在 $0$ 处的值要相等，于是 $C_1 = C_2 = C$，两段接上了. 但这样还是两段，用一个式子拼起来：

$$
\int \lvert x\rvert\,dx = \frac{1}{2}x\lvert x\rvert + C
$$

检验（$x \ne 0$）：$\left(\dfrac{1}{2}x\lvert x\rvert\right)' = \dfrac{1}{2}\lvert x\rvert + \dfrac{1}{2}x\cdot\text{sgn}\,x = \lvert x\rvert$；$x = 0$ 处用导数定义也算得出是 $0 = \lvert 0\rvert$. 故成立.

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 判断 $F$ 是不是 $f$ 的原函数 | 直接算 $F'$，看是否恒等于 $f$ |
| 已知一个原函数求 $f$ | 对原函数求导 |
| 已知 $\int f\,dx$ 的具体表达式求 $f$ | 两边求导，$C$ 自动消失 |
| 已知 $f'$ 和一点求 $f$ | 先积出 $F(x) + C$，再代点定 $C$ |
| "求过点 $(a, b)$ 的积分曲线" | 同上，就是定 $C$ |
| 被积函数含 $\lvert x\rvert$ 或分段定义 | 分段积分，再用原函数连续性把两个常数粘成一个 |
| 题目问"原函数"而不是"不定积分" | 答一条曲线即可，不必写 $+C$ |

### 易错点

暂时留空

## 基本积分表

### 常用结论

**不定积分基本公式表**（必须背到条件反射，工科考试 90% 的题从这张表起步）.

幂函数与常数：

| 公式 | 条件 |
| :--- | :--- |
| $\displaystyle\int k\,dx = kx + C$ | $k$ 为常数 |
| $\displaystyle\int x^{a}\,dx = \frac{x^{a+1}}{a+1} + C$ | $a \ne -1$ |
| $\displaystyle\int \frac{dx}{x} = \ln\lvert x\rvert + C$ | $x \ne 0$，注意是绝对值 |

指数与对数：

| 公式 | 条件 |
| :--- | :--- |
| $\displaystyle\int e^{x}\,dx = e^{x} + C$ | — |
| $\displaystyle\int a^{x}\,dx = \frac{a^{x}}{\ln a} + C$ | $a > 0,\ a \ne 1$ |

三角函数：

| 公式 | 备注 |
| :--- | :--- |
| $\displaystyle\int \sin x\,dx = -\cos x + C$ | 负号 |
| $\displaystyle\int \cos x\,dx = \sin x + C$ | — |
| $\displaystyle\int \sec^{2}x\,dx = \tan x + C$ | 与 $(\tan x)'$ 对照背 |
| $\displaystyle\int \csc^{2}x\,dx = -\cot x + C$ | 负号 |
| $\displaystyle\int \sec x\tan x\,dx = \sec x + C$ | — |
| $\displaystyle\int \csc x\cot x\,dx = -\csc x + C$ | 负号 |
| $\displaystyle\int \tan x\,dx = -\ln\lvert\cos x\rvert + C$ | 也可写 $\ln\lvert\sec x\rvert + C$ |
| $\displaystyle\int \cot x\,dx = \ln\lvert\sin x\rvert + C$ | — |
| $\displaystyle\int \sec x\,dx = \ln\lvert\sec x + \tan x\rvert + C$ | 推导见例题 5 |
| $\displaystyle\int \csc x\,dx = \ln\lvert\csc x - \cot x\rvert + C$ | — |

反三角与根式：

| 公式 | 条件 |
| :--- | :--- |
| $\displaystyle\int \frac{dx}{1 + x^{2}} = \arctan x + C$ | — |
| $\displaystyle\int \frac{dx}{\sqrt{1 - x^{2}}} = \arcsin x + C$ | $\lvert x\rvert < 1$ |
| $\displaystyle\int \frac{dx}{a^{2} + x^{2}} = \frac{1}{a}\arctan\frac{x}{a} + C$ | $a > 0$ |
| $\displaystyle\int \frac{dx}{\sqrt{a^{2} - x^{2}}} = \arcsin\frac{x}{a} + C$ | $a > 0$ |
| $\displaystyle\int \frac{dx}{x^{2} - a^{2}} = \frac{1}{2a}\ln\left\lvert\frac{x - a}{x + a}\right\rvert + C$ | $a > 0$ |
| $\displaystyle\int \frac{dx}{\sqrt{x^{2} \pm a^{2}}} = \ln\left\lvert x + \sqrt{x^{2} \pm a^{2}}\right\rvert + C$ | 两个符号都成立 |

双曲函数（与三角的差别只在符号）：

| 公式 | 备注 |
| :--- | :--- |
| $\displaystyle\int \sinh x\,dx = \cosh x + C$ | 没有负号 |
| $\displaystyle\int \cosh x\,dx = \sinh x + C$ | — |
| $\displaystyle\int \frac{dx}{\cosh^{2}x} = \tanh x + C$ | — |
| $\displaystyle\int \tanh x\,dx = \ln\cosh x + C$ | 绝对值可省，$\cosh x > 0$ |

共 25 条. 这份表**不用死背整张**，最好记的是"求导表倒过来看"，考试时现场反推两条也就十几秒.

### 备注

三条极易混的：

- $\displaystyle\int \sec^{2}x\,dx = \tan x + C$，**没有** $\sec x$ 的平方项；
- $\displaystyle\int \frac{dx}{x} = \ln\lvert x\rvert + C$，左边是幂函数 $x^{-1}$，但公式 $\dfrac{x^{a+1}}{a+1}$ 在 $a = -1$ 时分母为零，所以 $a = -1$ 必须单列；
- $\displaystyle\int \frac{dx}{x^{2} - a^{2}}$ 是**对数**，$\displaystyle\int \frac{dx}{a^{2} + x^{2}}$ 是**反正切**，分母一个减一个加，结果完全不同.

### 例题 1

求下列不定积分：

$$
\int x^{5}\,dx, \qquad \int \frac{dx}{x^{3}}, \qquad \int \sqrt{x}\,dx
$$

### 例题解答 1

全是 $x^{a}$ 型，指数分别取 $5$、$-3$、$\dfrac{1}{2}$：

$$
\int x^{5}\,dx = \frac{x^{6}}{6} + C
$$

$$
\int \frac{dx}{x^{3}} = \int x^{-3}\,dx = \frac{x^{-2}}{-2} + C = -\frac{1}{2x^{2}} + C
$$

$$
\int \sqrt{x}\,dx = \int x^{1/2}\,dx = \frac{x^{3/2}}{3/2} + C = \frac{2}{3}x\sqrt{x} + C
$$

### 例题 2

求 $\displaystyle\int \left(2^{x} + 3^{x}\right)dx$.

### 例题解答 2

拆成两个指数积分，分别用 $\displaystyle\int a^{x}\,dx = \frac{a^{x}}{\ln a} + C$：

$$
\int \left(2^{x} + 3^{x}\right)dx = \frac{2^{x}}{\ln 2} + \frac{3^{x}}{\ln 3} + C
$$

一个 $C$ 就够了，不必写 $C_1 + C_2$（常数的和仍是常数）.

### 例题 3

求 $\displaystyle\int \left(\sqrt{x} + \frac{1}{\sqrt{x}}\right)^{2}dx$.

### 例题解答 3

不能直接套表，先把平方展开，化成幂函数：

$$
\left(\sqrt{x} + \frac{1}{\sqrt{x}}\right)^{2} = x + 2 + \frac{1}{x}
$$

所以

$$
\int \left(x + 2 + \frac{1}{x}\right)dx = \frac{x^{2}}{2} + 2x + \ln\lvert x\rvert + C
$$

### 例题 4

求 $\displaystyle\int \frac{x^{2} + 1}{x^{2} + 1}\,dx$ 与 $\displaystyle\int \frac{x^{2} + 1}{x}\,dx$.

### 例题解答 4

第一个是送分题：

$$
\int \frac{x^{2} + 1}{x^{2} + 1}\,dx = \int 1\,dx = x + C
$$

第二个先做除法分出整式：

$$
\frac{x^{2} + 1}{x} = x + \frac{1}{x}
$$

$$
\int \left(x + \frac{1}{x}\right)dx = \frac{x^{2}}{2} + \ln\lvert x\rvert + C
$$

**假分式先除**这个动作在积分里出现频率极高（第 7 节有理函数还会反复用）.

### 例题 5

推导 $\displaystyle\int \sec x\,dx$.

### 例题解答 5

基本表里这条最容易忘，但它可以现场造. 用 $\sec x = \dfrac{1}{\cos x}$ 凑：

$$
\int \sec x\,dx = \int \frac{\sec x\left(\sec x + \tan x\right)}{\sec x + \tan x}\,dx
$$

注意

$$
\left(\sec x + \tan x\right)' = \sec x\tan x + \sec^{2}x = \sec x\left(\sec x + \tan x\right)
$$

分子恰好是分母的导数，于是

$$
\int \sec x\,dx = \int \frac{d\left(\sec x + \tan x\right)}{\sec x + \tan x} = \ln\lvert\sec x + \tan x\rvert + C
$$

### 例题 6

求 $\displaystyle\int \sin^{2}x\,dx$ 与 $\displaystyle\int \cos^{2}x\,dx$.

### 例题解答 6

基本表里没有平方，先降幂：

$$
\sin^{2}x = \frac{1 - \cos 2x}{2},
\qquad
\cos^{2}x = \frac{1 + \cos 2x}{2}
$$

于是

$$
\int \sin^{2}x\,dx = \frac{1}{2}\int \left(1 - \cos 2x\right)dx = \frac{x}{2} - \frac{\sin 2x}{4} + C
$$

$$
\int \cos^{2}x\,dx = \frac{1}{2}\int \left(1 + \cos 2x\right)dx = \frac{x}{2} + \frac{\sin 2x}{4} + C
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 纯套公式 | 对照基本表，注意 $a = -1$ 的特殊性和绝对值 |
| 被积函数是多项式、根式、$\frac{1}{x^{m}}$ | 全部化成 $x^{a}$ 再用幂函数公式 |
| 分式且分子次数 $\ge$ 分母次数 | 先做多项式除法，分出整式再积 |
| 含 $\sin^{2}x$、$\cos^{2}x$ | 降幂公式化到一次 |
| 含 $\sec x$、$\csc x$ | 分子分母同乘 $(\sec x + \tan x)$ 或 $(\csc x - \cot x)$ |
| 公式记不清 | 对结果求导验证，或从求导表倒推 |

### 易错点

暂时留空

## 不定积分的性质与线性运算

### 定理

**性质 1（线性）** 若 $f(x)$、$g(x)$ 的原函数都存在，$k_1$、$k_2$ 为常数，则

$$
\int \left[k_1 f(x) + k_2 g(x)\right]dx = k_1\int f(x)\,dx + k_2\int g(x)\,dx
$$

**性质 2（与求导、微分的关系）**

$$
\left(\int f(x)\,dx\right)' = f(x),
\qquad
d\left(\int f(x)\,dx\right) = f(x)\,dx
$$

$$
\int F'(x)\,dx = F(x) + C,
\qquad
\int dF(x) = F(x) + C
$$

后两条说的是一件事：**先积分再求导，回到原函数；先求导再积分，回到原函数再加 $C$**.

### 使用前提

- 线性性质要求每一项的**原函数都存在**，拆开后每一项都要能积出来，否则拆了也白拆；
- 常数可以任意提到积分号外面，但**变量不能**：$\int x f(x)\,dx \ne x\int f(x)\,dx$；
- 拆分只对**有限项**成立，项数多了照样逐项处理.

### 例题 1

求 $\displaystyle\int \left(3x^{2} - 2x + 1\right)dx$.

### 例题解答 1

逐项积，常数不动：

$$
\int \left(3x^{2} - 2x + 1\right)dx = 3\cdot\frac{x^{3}}{3} - 2\cdot\frac{x^{2}}{2} + x + C = x^{3} - x^{2} + x + C
$$

### 例题 2

求 $\displaystyle\int \left(2\sin x + 3\cos x - 4e^{x}\right)dx$.

### 例题解答 2

$$
\int \left(2\sin x + 3\cos x - 4e^{x}\right)dx = -2\cos x + 3\sin x - 4e^{x} + C
$$

注意 $\sin$ 积出来带负号，$\cos$ 不带.

### 例题 3

求 $\displaystyle\int \frac{x^{3} + 1}{x + 1}\,dx$.

### 例题解答 3

分子有现成的因式分解 $x^{3} + 1 = (x + 1)\left(x^{2} - x + 1\right)$，先约分：

$$
\frac{x^{3} + 1}{x + 1} = x^{2} - x + 1
$$

$$
\int \left(x^{2} - x + 1\right)dx = \frac{x^{3}}{3} - \frac{x^{2}}{2} + x + C
$$

### 例题 4

设

$$
f(x) =
\begin{cases}
x, & x < 1 \\[4pt]
2x, & x \ge 1
\end{cases}
$$

求 $\displaystyle\int f(x)\,dx$.

### 例题解答 4

分段积：

$$
\int f(x)\,dx =
\begin{cases}
\dfrac{x^{2}}{2} + C_1, & x < 1 \\[8pt]
x^{2} + C_2, & x \ge 1
\end{cases}
$$

原函数必须处处可导，故在 $x = 1$ 处连续：

$$
\frac{1}{2} + C_1 = 1 + C_2 \Longrightarrow C_2 = C_1 - \frac{1}{2}
$$

令 $C_1 = C$，则 $C_2 = C - \dfrac{1}{2}$，最终

$$
\int f(x)\,dx =
\begin{cases}
\dfrac{x^{2}}{2} + C, & x < 1 \\[8pt]
x^{2} - \dfrac{1}{2} + C, & x \ge 1
\end{cases}
$$

两个常数其实只有一个自由度，积分常数永远只有一个.

### 例题 5

求 $\displaystyle\int \left(2x + 3\right)^{2}dx$.

### 例题解答 5

方法一，先展开：

$$
\left(2x + 3\right)^{2} = 4x^{2} + 12x + 9
$$

$$
\int \left(4x^{2} + 12x + 9\right)dx = \frac{4}{3}x^{3} + 6x^{2} + 9x + C
$$

方法二，把 $2x + 3$ 整体看作 $u$（下一节的第一类换元）：

$$
\int \left(2x + 3\right)^{2}dx = \frac{1}{2}\int \left(2x + 3\right)^{2}d\left(2x + 3\right) = \frac{1}{2}\cdot\frac{\left(2x + 3\right)^{3}}{3} + C = \frac{\left(2x + 3\right)^{3}}{6} + C
$$

两种答案差一个常数，都是对的.

### 例题 6

求 $\displaystyle\int \frac{1 - \sin^{2}x}{\cos^{2}x}\,dx$.

### 例题解答 6

先用三角恒等式化简，别急着积：

$$
\frac{1 - \sin^{2}x}{\cos^{2}x} = \frac{\cos^{2}x}{\cos^{2}x} = 1
$$

$$
\int 1\,dx = x + C
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 多项式 / 多项式与三角、指数的和差 | 逐项积，常数照抄 |
| 分式且分子能因式分解出分母 | 先约分，化成多项式 |
| 分子次数 $\ge$ 分母次数 | 先做除法，分出整式 |
| $\sin^{2}x$、$\cos^{2}x$、$\tan^{2}x$ 一类 | 先用平方关系、降幂公式化到基本表 |
| 被积函数是分段定义的 | 分段积，用原函数在分界点的连续性把两个常数合成一个 |
| 看到 $\left(ax + b\right)^{n}$ | 展开或直接凑成 $\dfrac{1}{a}\cdot\dfrac{\left(ax+b\right)^{n+1}}{n+1}$ |

### 易错点

暂时留空

## 第一类换元法（凑微分）

### 定理

**第一类换元法（凑微分法）** 设 $u = \varphi(x)$ 可导，且 $f(u)$ 有原函数 $F(u)$，则

$$
\int f\left(\varphi(x)\right)\varphi'(x)\,dx = \int f(u)\,du = F(u) + C = F\left(\varphi(x)\right) + C
$$

写成微分形式更好操作：

$$
\int f\left(\varphi(x)\right)d\left(\varphi(x)\right) = F\left(\varphi(x)\right) + C
$$

一句话：**把被积表达式里能凑成 $d(\text{某个式子})$ 的那一坨，整体当成 $u$**.

### 常用结论

**凑微分对照表**（这张表是解所有凑微分题的工具箱，必须熟练到看见就反应）.

| 被积表达式中的部分 | 可以写成 | 常见用途 |
| :--- | :--- | :--- |
| $dx$ | $d(x + b)$ | 平移，最基础 |
| $x\,dx$ | $\dfrac{1}{2}d\left(x^{2}\right)$ | 根号里、指数上出现 $x^{2}$ |
| $x^{2}\,dx$ | $\dfrac{1}{3}d\left(x^{3}\right)$ | 同上 |
| $\dfrac{dx}{x}$ | $d\ln\lvert x\rvert$ | 分母有 $\ln x$ 或 $\ln$ 型 |
| $\dfrac{dx}{x^{2}}$ | $-d\dfrac{1}{x}$ | 倒代换的雏形 |
| $e^{x}\,dx$ | $d\left(e^{x}\right)$ | 指数与其它函数相乘 |
| $\dfrac{dx}{\sqrt{x}}$ | $2d\sqrt{x}$ | 根号在分母 |
| $\cos x\,dx$ | $d\sin x$ | $\sin$ 出现在复合里 |
| $\sin x\,dx$ | $-d\cos x$ | $\cos$ 出现在复合里 |
| $\sec^{2}x\,dx$ | $d\tan x$ | $\tan$ 出现在复合里 |
| $\dfrac{dx}{1 + x^{2}}$ | $d\arctan x$ | 分母是 $1 + x^{2}$ 型 |
| $\dfrac{dx}{\sqrt{1 - x^{2}}}$ | $d\arcsin x$ | 分母是根式 |
| $\dfrac{dx}{x + a}$ | $d\ln\lvert x + a\rvert$ | 分母是一次式 |

### 例题 1

求 $\displaystyle\int e^{3x}\,dx$.

### 例题解答 1

$e^{3x}$ 不是基本表里的 $e^{x}$，但 $3x$ 的导数 $3$ 是常数，可以补：

$$
\int e^{3x}\,dx = \frac{1}{3}\int e^{3x}d(3x) = \frac{1}{3}e^{3x} + C
$$

**补常数因子**是最常见的第一步：$d(3x) = 3\,dx$，所以要乘 $\dfrac{1}{3}$ 补回来.

### 例题 2

求 $\displaystyle\int \left(2x + 1\right)^{5}dx$.

### 例题解答 2

$$
\int \left(2x + 1\right)^{5}dx = \frac{1}{2}\int \left(2x + 1\right)^{5}d(2x + 1) = \frac{1}{2}\cdot\frac{\left(2x + 1\right)^{6}}{6} + C = \frac{\left(2x + 1\right)^{6}}{12} + C
$$

### 例题 3

求 $\displaystyle\int x\sqrt{1 + x^{2}}\,dx$.

### 例题解答 3

看到 $\sqrt{1 + x^{2}}$ 和外面的 $x$：$x\,dx = \dfrac{1}{2}d\left(1 + x^{2}\right)$，正好把 $1 + x^{2}$ 凑成整体：

$$
\int x\sqrt{1 + x^{2}}\,dx = \frac{1}{2}\int \left(1 + x^{2}\right)^{1/2}d\left(1 + x^{2}\right) = \frac{1}{2}\cdot\frac{\left(1 + x^{2}\right)^{3/2}}{3/2} + C = \frac{1}{3}\left(1 + x^{2}\right)^{3/2} + C
$$

### 例题 4

求 $\displaystyle\int \frac{dx}{x\ln x}$.

### 例题解答 4

$\dfrac{dx}{x} = d\ln x$，而 $\ln x$ 在分母：

$$
\int \frac{dx}{x\ln x} = \int \frac{d\ln x}{\ln x} = \ln\lvert\ln x\rvert + C
$$

### 例题 5

求 $\displaystyle\int \tan x\,dx$.

### 例题解答 5

$\tan x = \dfrac{\sin x}{\cos x}$，分子 $\sin x\,dx = -d\cos x$：

$$
\int \tan x\,dx = -\int \frac{d\cos x}{\cos x} = -\ln\lvert\cos x\rvert + C
$$

也可以写成 $\ln\lvert\sec x\rvert + C$，两者相等.

### 例题 6

求 $\displaystyle\int \frac{dx}{x^{2} + a^{2}}$（$a > 0$）.

### 例题解答 6

提 $a^{2}$ 出来，凑成 $\dfrac{dx}{1 + u^{2}}$ 的形式：

$$
\int \frac{dx}{x^{2} + a^{2}} = \frac{1}{a^{2}}\int \frac{dx}{1 + \left(\dfrac{x}{a}\right)^{2}} = \frac{1}{a^{2}}\cdot a\int \frac{d\left(\dfrac{x}{a}\right)}{1 + \left(\dfrac{x}{a}\right)^{2}} = \frac{1}{a}\arctan\frac{x}{a} + C
$$

### 例题 7

求 $\displaystyle\int \frac{e^{\sqrt{x}}}{\sqrt{x}}\,dx$.

### 例题解答 7

$\dfrac{dx}{\sqrt{x}} = 2d\sqrt{x}$：

$$
\int \frac{e^{\sqrt{x}}}{\sqrt{x}}\,dx = 2\int e^{\sqrt{x}}d\sqrt{x} = 2e^{\sqrt{x}} + C
$$

### 例题 8

求 $\displaystyle\int \cos^{2}x\sin x\,dx$.

### 例题解答 8

$\sin x\,dx = -d\cos x$，于是把 $\cos x$ 整体当 $u$：

$$
\int \cos^{2}x\sin x\,dx = -\int u^{2}\,du = -\frac{u^{3}}{3} + C = -\frac{\cos^{3}x}{3} + C
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 复合函数 $f(ax + b)$ | 提 $\dfrac{1}{a}$ 出来，$d(ax + b)$ |
| 根号里是 $x^{2} \pm a$ 且外面有 $x$ | $x\,dx = \dfrac{1}{2}d\left(x^{2}\right)$ |
| 分母有 $\ln x$、外面有 $\dfrac{1}{x}$ | 凑 $d\ln x$ |
| 分式 $\dfrac{1}{ax + b}$ | 凑 $d(ax + b)$ 得对数 |
| 三角函数与 $\cos x$、$\sin x$ 相乘 | 把 $\cos x\,dx$ 凑进 $d\sin x$，或 $\sin x\,dx$ 凑成 $-d\cos x$ |
| 分母是 $x^{2} + a^{2}$ | 提 $a^{2}$，凑 $d\left(\dfrac{x}{a}\right)$ 用反正切 |
| 分母是 $\sqrt{1 - x^{2}}$ 型 | 凑 $d\arcsin x$ |
| 指数上出现 $\sqrt{x}$、$x^{2}$ 等 | 把那个"整块"当 $u$，外面缺的常数因子补上 |

### 易错点

暂时留空

## 第二类换元法

### 定理

**第二类换元法** 设 $x = \psi(t)$ 单调、可导且 $\psi'(t) \ne 0$，又 $f\left(\psi(t)\right)\psi'(t)$ 有原函数，则

$$
\int f(x)\,dx = \int f\left(\psi(t)\right)\psi'(t)\,dt
$$

右边积完后必须**回代** $t = \psi^{-1}(x)$，把结果换回 $x$ 的表达式.

两类的分工：

| 类型 | 形式 | 什么时候用 |
| :--- | :--- | :--- |
| 第一类（凑微分） | $u = \varphi(x)$ 塞进去 | 被积函数里已经"藏着" $\varphi'(x)$ |
| 第二类（换元） | 令 $x = \psi(t)$ 换出来 | 被积函数里出现的 $\sqrt{\ \cdot\ }$ 让人难受，用三角代换或根式代换能消掉 |

### 常用结论

**三种三角代换**（$a > 0$）：

| 被积函数含有 | 代换 | 代换后化简用的恒等式 | 三角函数新变量的范围 |
| :--- | :--- | :--- | :--- |
| $\sqrt{a^{2} - x^{2}}$ | $x = a\sin t$ | $\cos^{2}t = 1 - \sin^{2}t$ | $t \in \left(-\dfrac{\pi}{2}, \dfrac{\pi}{2}\right)$ |
| $\sqrt{a^{2} + x^{2}}$ | $x = a\tan t$ | $\sec^{2}t = 1 + \tan^{2}t$ | $t \in \left(-\dfrac{\pi}{2}, \dfrac{\pi}{2}\right)$ |
| $\sqrt{x^{2} - a^{2}}$ | $x = a\sec t$ | $\tan^{2}t = \sec^{2}t - 1$ | $t \in \left(0, \dfrac{\pi}{2}\right) \cup \left(\dfrac{\pi}{2}, \pi\right)$ |

**根式代换**（比三角代换更省事的场合）：

| 被积函数含有 | 代换 |
| :--- | :--- |
| $\sqrt{ax + b}$ | $t = \sqrt{ax + b}$，即 $x = \dfrac{t^{2} - b}{a}$ |
| $\sqrt[n]{ax + b}$ | $t = \sqrt[n]{ax + b}$ |
| $\sqrt{\dfrac{ax + b}{cx + d}}$ | $t = \sqrt{\dfrac{ax + b}{cx + d}}$ |

**倒代换**：分母含 $x$ 的高次、而分子次数低，令 $x = \dfrac{1}{t}$，$dx = -\dfrac{dt}{t^{2}}$，往往能让分母的根号"降次".

### 例题 1

求 $\displaystyle\int \sqrt{a^{2} - x^{2}}\,dx$（$a > 0$）.

### 例题解答 1

令 $x = a\sin t$，$dx = a\cos t\,dt$，$\sqrt{a^{2} - x^{2}} = a\cos t$（$t \in \left(-\dfrac{\pi}{2}, \dfrac{\pi}{2}\right)$）.

$$
\int \sqrt{a^{2} - x^{2}}\,dx = \int a\cos t \cdot a\cos t\,dt = a^{2}\int \cos^{2}t\,dt = a^{2}\left(\frac{t}{2} + \frac{\sin 2t}{4}\right) + C
$$

回代：$t = \arcsin\dfrac{x}{a}$，$\sin 2t = 2\sin t\cos t = 2\cdot\dfrac{x}{a}\cdot\dfrac{\sqrt{a^{2} - x^{2}}}{a}$，于是

$$
\int \sqrt{a^{2} - x^{2}}\,dx = \frac{a^{2}}{2}\arcsin\frac{x}{a} + \frac{x}{2}\sqrt{a^{2} - x^{2}} + C
$$

### 例题 2

求 $\displaystyle\int \frac{dx}{\sqrt{x^{2} + a^{2}}}$（$a > 0$）.

### 例题解答 2

令 $x = a\tan t$，$dx = a\sec^{2}t\,dt$，$\sqrt{x^{2} + a^{2}} = a\sec t$：

$$
\int \frac{dx}{\sqrt{x^{2} + a^{2}}} = \int \frac{a\sec^{2}t}{a\sec t}\,dt = \int \sec t\,dt = \ln\lvert\sec t + \tan t\rvert + C
$$

回代：$\tan t = \dfrac{x}{a}$，$\sec t = \dfrac{\sqrt{x^{2} + a^{2}}}{a}$，常数 $\ln a$ 被 $C$ 吸收，得

$$
\int \frac{dx}{\sqrt{x^{2} + a^{2}}} = \ln\left(x + \sqrt{x^{2} + a^{2}}\right) + C
$$

（这里 $x + \sqrt{x^{2} + a^{2}} > 0$，绝对值可省.）

### 例题 3

求 $\displaystyle\int \frac{dx}{\sqrt{x^{2} - a^{2}}}$（$a > 0$）.

### 例题解答 3

令 $x = a\sec t$，$dx = a\sec t\tan t\,dt$，$\sqrt{x^{2} - a^{2}} = a\tan t$：

$$
\int \frac{dx}{\sqrt{x^{2} - a^{2}}} = \int \sec t\,dt = \ln\lvert\sec t + \tan t\rvert + C
$$

回代 $\sec t = \dfrac{x}{a}$、$\tan t = \dfrac{\sqrt{x^{2} - a^{2}}}{a}$：

$$
\int \frac{dx}{\sqrt{x^{2} - a^{2}}} = \ln\left\lvert x + \sqrt{x^{2} - a^{2}}\right\rvert + C
$$

### 例题 4

求 $\displaystyle\int \frac{dx}{1 + \sqrt{x}}$.

### 例题解答 4

这类题用三角代换反而更麻烦，直接令 $t = \sqrt{x}$，则 $x = t^{2}$，$dx = 2t\,dt$：

$$
\int \frac{dx}{1 + \sqrt{x}} = \int \frac{2t}{1 + t}\,dt = 2\int \left(1 - \frac{1}{1 + t}\right)dt = 2\left(t - \ln\lvert 1 + t\rvert\right) + C
$$

回代 $t = \sqrt{x}$：

$$
\int \frac{dx}{1 + \sqrt{x}} = 2\sqrt{x} - 2\ln\left(1 + \sqrt{x}\right) + C
$$

### 例题 5

求 $\displaystyle\int \frac{dx}{x^{2}\sqrt{x^{2} + 1}}$.

### 例题解答 5

分母的幂次比分子高得多，用**倒代换** $x = \dfrac{1}{t}$（$x > 0$），$dx = -\dfrac{dt}{t^{2}}$：

$$
x^{2}\sqrt{x^{2} + 1} = \frac{1}{t^{2}}\cdot\frac{\sqrt{1 + t^{2}}}{t}
$$

$$
\int \frac{dx}{x^{2}\sqrt{x^{2} + 1}} = \int \left(-\frac{dt}{t^{2}}\right)\cdot\frac{t^{3}}{\sqrt{1 + t^{2}}} = -\int \frac{t\,dt}{\sqrt{1 + t^{2}}} = -\sqrt{1 + t^{2}} + C
$$

回代 $t = \dfrac{1}{x}$，注意 $\sqrt{1 + \dfrac{1}{x^{2}}} = \dfrac{\sqrt{x^{2} + 1}}{x}$（$x > 0$）：

$$
\int \frac{dx}{x^{2}\sqrt{x^{2} + 1}} = -\frac{\sqrt{x^{2} + 1}}{x} + C
$$

### 例题 6

求 $\displaystyle\int \frac{x^{2}}{\sqrt{1 - x^{2}}}\,dx$.

### 例题解答 6

令 $x = \sin t$，$dx = \cos t\,dt$，$\sqrt{1 - x^{2}} = \cos t$：

$$
\int \frac{x^{2}}{\sqrt{1 - x^{2}}}\,dx = \int \sin^{2}t\,dt = \frac{t}{2} - \frac{\sin 2t}{4} + C
$$

回代 $t = \arcsin x$，$\sin 2t = 2x\sqrt{1 - x^{2}}$：

$$
\int \frac{x^{2}}{\sqrt{1 - x^{2}}}\,dx = \frac{1}{2}\arcsin x - \frac{1}{2}x\sqrt{1 - x^{2}} + C
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 含 $\sqrt{a^{2} - x^{2}}$ | $x = a\sin t$，回代用 $\sin t = \dfrac{x}{a}$、$\cos t = \dfrac{\sqrt{a^{2} - x^{2}}}{a}$ |
| 含 $\sqrt{a^{2} + x^{2}}$ | $x = a\tan t$，结果是 $\ln\left(x + \sqrt{x^{2} + a^{2}}\right)$ |
| 含 $\sqrt{x^{2} - a^{2}}$ | $x = a\sec t$，结果是 $\ln\left\lvert x + \sqrt{x^{2} - a^{2}}\right\rvert$ |
| 含 $\sqrt{ax + b}$ 或 $\sqrt[n]{ax + b}$ | 直接令 $t$ 等于整个根式，别用三角代换 |
| 分母是 $x$ 的高次乘根式、分子次数低 | 倒代换 $x = \dfrac{1}{t}$ |
| 回代三角表达式 | 画直角三角形：对边、邻边、斜边对着 $\sin$、$\cos$、$\tan$ 取，比背公式稳 |
| 积分限是 $0$ 到 $a$ 且被积函数含 $\sqrt{a^{2} - x^{2}}$ | 优先考虑几何意义（四分之一圆面积），比硬积快得多 |

### 易错点

暂时留空

## 分部积分法

### 定理

由乘积求导公式 $(uv)' = u'v + uv'$ 两边积分并移项，得**分部积分公式**：

$$
\int u\,dv = uv - \int v\,du
$$

或写成更"看得见"的形式：

$$
\int u(x)v'(x)\,dx = u(x)v(x) - \int v(x)u'(x)\,dx
$$

它的作用是**把积分难度降一级**：把 $\int u\,dv$ 换成 $\int v\,du$，所以关键是选对 $u$ 和 $dv$——选完之后 $\int v\,du$ 要好算.

### 常用结论

**选 $u$ 的口诀：反、对、幂、指、三**（按这个顺序**排在前面的优先当 $u$）.

- 反三角：$\arcsin x$、$\arctan x$、$\ln$ 型反函数；
- 对数：$\ln x$、$\log_a x$；
- 幂函数：$x^{n}$、$x^{n}\pm a$ 一类；
- 指数：$e^{x}$、$a^{x}$；
- 三角：$\sin x$、$\cos x$.

排在前面的当 $u$（好求导），排在后面的当 $dv$（好积分）.

**多次分部用表格法**（连续分部时不用反复写 $uv - \int$）：

| 符号 | 求导列（$u$ 及其导数） | 积分列（$dv$ 逐次积分） |
| :--- | :--- | :--- |
| $+$ | $u$ | $dv$ |
| $-$ | $u'$ | $v$ |
| $+$ | $u''$ | $\int v$ |
| $\cdots$ | $\cdots$ | $\cdots$ |

斜着相乘、符号交替 $+,-,+,-$，最后一项以 $u^{(n)}$ 与最后一个积分相乘收尾.

**循环型**（$\int e^{ax}\cos bx\,dx$ 一类）：分部两次后右边重新出现原积分，移项解方程.

### 例题 1

求 $\displaystyle\int x e^{x}\,dx$.

### 例题解答 1

按口诀：幂函数 $x$ 排在对数后面、指数前面，所以取 $u = x$、$dv = e^{x}dx$：

$$
\int x e^{x}\,dx = x e^{x} - \int e^{x}\,dx = x e^{x} - e^{x} + C = (x - 1)e^{x} + C
$$

### 例题 2

求 $\displaystyle\int x\sin x\,dx$.

### 例题解答 2

取 $u = x$、$dv = \sin x\,dx$，则 $du = dx$、$v = -\cos x$：

$$
\int x\sin x\,dx = -x\cos x - \int (-\cos x)\,dx = -x\cos x + \sin x + C
$$

### 例题 3

求 $\displaystyle\int x^{2}e^{x}\,dx$.

### 例题解答 3

用表格法，$u = x^{2}$、$dv = e^{x}dx$：

| 符号 | $u$ 及其导数 | $v$ 的逐次积分 |
| :--- | :--- | :--- |
| $+$ | $x^{2}$ | $e^{x}$ |
| $-$ | $2x$ | $e^{x}$ |
| $+$ | $2$ | $e^{x}$ |
| $-$ | $0$ | $e^{x}$ |

斜着相乘：

$$
\int x^{2}e^{x}\,dx = x^{2}e^{x} - 2xe^{x} + 2e^{x} + C = \left(x^{2} - 2x + 2\right)e^{x} + C
$$

### 例题 4

求 $\displaystyle\int \ln x\,dx$.

### 例题解答 4

对数没有现成的积分，但取 $u = \ln x$、$dv = dx$ 后 $du = \dfrac{dx}{x}$、$v = x$：

$$
\int \ln x\,dx = x\ln x - \int x\cdot\frac{1}{x}\,dx = x\ln x - x + C
$$

同理 $\displaystyle\int \arcsin x\,dx = x\arcsin x + \sqrt{1 - x^{2}} + C$、$\displaystyle\int \arctan x\,dx = x\arctan x - \dfrac{1}{2}\ln\left(1 + x^{2}\right) + C$，都靠"$dv = dx$，$v = x$"起手.

### 例题 5

求 $\displaystyle\int x\arctan x\,dx$.

### 例题解答 5

反三角优先当 $u$：$u = \arctan x$、$dv = x\,dx$，$du = \dfrac{dx}{1 + x^{2}}$、$v = \dfrac{x^{2}}{2}$：

$$
\int x\arctan x\,dx = \frac{x^{2}}{2}\arctan x - \frac{1}{2}\int \frac{x^{2}}{1 + x^{2}}\,dx
$$

后一个积分配凑：$\dfrac{x^{2}}{1 + x^{2}} = 1 - \dfrac{1}{1 + x^{2}}$：

$$
\int \frac{x^{2}}{1 + x^{2}}\,dx = x - \arctan x
$$

代回：

$$
\int x\arctan x\,dx = \frac{x^{2}}{2}\arctan x - \frac{x}{2} + \frac{1}{2}\arctan x + C = \frac{1}{2}\left(x^{2} + 1\right)\arctan x - \frac{x}{2} + C
$$

### 例题 6

求 $\displaystyle\int e^{x}\cos x\,dx$（循环型）.

### 例题解答 6

取 $u = \cos x$、$dv = e^{x}dx$：

$$
I = \int e^{x}\cos x\,dx = e^{x}\cos x + \int e^{x}\sin x\,dx
$$

对 $\int e^{x}\sin x\,dx$ 再来一次，取 $u = \sin x$：

$$
\int e^{x}\sin x\,dx = e^{x}\sin x - \int e^{x}\cos x\,dx = e^{x}\sin x - I
$$

代回：

$$
I = e^{x}\cos x + e^{x}\sin x - I \Longrightarrow 2I = e^{x}\left(\sin x + \cos x\right)
$$

$$
\int e^{x}\cos x\,dx = \frac{e^{x}}{2}\left(\sin x + \cos x\right) + C
$$

### 例题 7

求 $\displaystyle\int x\ln x\,dx$.

### 例题解答 7

$u = \ln x$、$dv = x\,dx$，$v = \dfrac{x^{2}}{2}$：

$$
\int x\ln x\,dx = \frac{x^{2}}{2}\ln x - \int \frac{x^{2}}{2}\cdot\frac{1}{x}\,dx = \frac{x^{2}}{2}\ln x - \frac{x^{2}}{4} + C
$$

### 例题 8

求 $\displaystyle\int \sec^{3}x\,dx$.

### 例题解答 8

$\sec^{3}x = \sec x\cdot\sec^{2}x$，取 $u = \sec x$、$dv = \sec^{2}x\,dx$，$v = \tan x$：

$$
I = \int \sec^{3}x\,dx = \sec x\tan x - \int \tan x\cdot\sec x\tan x\,dx = \sec x\tan x - \int \sec x\tan^{2}x\,dx
$$

用 $\tan^{2}x = \sec^{2}x - 1$：

$$
I = \sec x\tan x - \int \sec^{3}x\,dx + \int \sec x\,dx = \sec x\tan x - I + \ln\lvert\sec x + \tan x\rvert
$$

$$
\int \sec^{3}x\,dx = \frac{1}{2}\left(\sec x\tan x + \ln\lvert\sec x + \tan x\rvert\right) + C
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 多项式 $\times$ 指数 / 三角 | 取多项式为 $u$，指数或三角为 $dv$ |
| 多项式 $\times$ 对数 / 反三角 | 取对数或反三角为 $u$，多项式为 $dv$ |
| 只有 $\ln x$、$\arcsin x$、$\arctan x$ | 令 $dv = dx$，$v = x$ |
| 多项式次数高（$x^{2}$、$x^{3}$ 乘指数） | 表格法，符号交替，直到求导列为 $0$ |
| $e^{ax}\cos bx$、$e^{ax}\sin bx$ | 循环型，分部两次后移项解出 $I$ |
| $\sec^{3}x$、$\csc^{3}x$ | 拆成 $\sec x\cdot\sec^{2}x$，再用恒等式把原积分顶出来 |
| 分部后 $\int v\,du$ 比原来更复杂 | 说明 $u$、$dv$ 选反了，交换重来 |

### 易错点

暂时留空

## 有理函数的积分

### 定义

两个多项式的商

$$
R(x) = \frac{P(x)}{Q(x)}
$$

叫**有理函数**. 当分子次数 $\ge$ 分母次数时叫**假分式**，小于时叫**真分式**.

**假分式的处理**：先做多项式长除法，拆成"多项式 + 真分式"，多项式部分直接积，剩下的只处理真分式. 所以本节的真正任务只有一个：**真分式怎么积**.

### 定理

**部分分式分解定理** 任何真分式都能唯一地拆成下面四种**部分分式**的和：

| 分母中的因式 | 对应的部分分式 |
| :--- | :--- |
| 一次因式 $(x - a)$ | $\dfrac{A}{x - a}$ |
| $k$ 重一次因式 $(x - a)^{k}$ | $\dfrac{A_1}{x - a} + \dfrac{A_2}{(x - a)^{2}} + \cdots + \dfrac{A_k}{(x - a)^{k}}$ |
| 不可约二次因式 $x^{2} + px + q$（$p^{2} - 4q < 0$） | $\dfrac{Bx + C}{x^{2} + px + q}$ |
| $k$ 重不可约二次因式 $(x^{2} + px + q)^{k}$ | $\dfrac{B_1 x + C_1}{x^{2} + px + q} + \cdots + \dfrac{B_k x + C_k}{\left(x^{2} + px + q\right)^{k}}$ |

**四种部分分式对应的积分**：

$$
\int \frac{A}{x - a}\,dx = A\ln\lvert x - a\rvert + C
$$

$$
\int \frac{A}{(x - a)^{k}}\,dx = \frac{A}{(1 - k)(x - a)^{k-1}} + C \quad (k \ge 2)
$$

$$
\int \frac{Bx + C}{x^{2} + px + q}\,dx
= \frac{B}{2}\ln\left(x^{2} + px + q\right) + \frac{2C - Bp}{\sqrt{4q - p^{2}}}\arctan\frac{2x + p}{\sqrt{4q - p^{2}}} + C
$$

最后这个公式不用背，**操作法**是：分子先凑分母的导数，剩下的常数项再配成 $\arctan$.

### 例题 1

求 $\displaystyle\int \frac{x + 3}{x^{2} - 3x + 2}\,dx$.

### 例题解答 1

分母分解：$x^{2} - 3x + 2 = (x - 1)(x - 2)$. 设

$$
\frac{x + 3}{(x - 1)(x - 2)} = \frac{A}{x - 1} + \frac{B}{x - 2}
$$

两边乘 $(x - 1)(x - 2)$：

$$
x + 3 = A(x - 2) + B(x - 1)
$$

代 $x = 1$：$4 = -A$，$A = -4$；代 $x = 2$：$5 = B$. 于是

$$
\int \frac{x + 3}{x^{2} - 3x + 2}\,dx = -4\ln\lvert x - 1\rvert + 5\ln\lvert x - 2\rvert + C
$$

### 例题 2

求 $\displaystyle\int \frac{2x + 3}{x^{2} + 2x + 5}\,dx$.

### 例题解答 2

分母不可约（$p^{2} - 4q = 4 - 20 < 0$），分子先凑分母的导数 $(x^{2} + 2x + 5)' = 2x + 2$：

$$
\frac{2x + 3}{x^{2} + 2x + 5} = \frac{2x + 2}{x^{2} + 2x + 5} + \frac{1}{x^{2} + 2x + 5}
$$

第一项直接出对数；第二项配方：

$$
x^{2} + 2x + 5 = (x + 1)^{2} + 4
$$

$$
\int \frac{dx}{(x + 1)^{2} + 2^{2}} = \frac{1}{2}\arctan\frac{x + 1}{2}
$$

合并：

$$
\int \frac{2x + 3}{x^{2} + 2x + 5}\,dx = \ln\left(x^{2} + 2x + 5\right) + \frac{1}{2}\arctan\frac{x + 1}{2} + C
$$

### 例题 3

求 $\displaystyle\int \frac{dx}{x(x - 1)^{2}}$.

### 例题解答 3

分母有单根 $0$ 和二重根 $1$，按定理设

$$
\frac{1}{x(x - 1)^{2}} = \frac{A}{x} + \frac{B}{x - 1} + \frac{C}{(x - 1)^{2}}
$$

两边乘 $x(x - 1)^{2}$：

$$
1 = A(x - 1)^{2} + Bx(x - 1) + Cx
$$

代 $x = 0$：$A = 1$；代 $x = 1$：$C = 1$；比较 $x^{2}$ 系数：$A + B = 0$，$B = -1$. 所以

$$
\int \frac{dx}{x(x - 1)^{2}} = \ln\lvert x\rvert - \ln\lvert x - 1\rvert - \frac{1}{x - 1} + C
$$

### 例题 4

求 $\displaystyle\int \frac{x^{3} + 1}{x^{2} + 1}\,dx$.

### 例题解答 4

假分式，先做除法：

$$
\frac{x^{3} + 1}{x^{2} + 1} = x + \frac{1 - x}{x^{2} + 1}
$$

$$
\int x\,dx = \frac{x^{2}}{2},
\qquad
\int \frac{1 - x}{x^{2} + 1}\,dx = \arctan x - \frac{1}{2}\ln\left(1 + x^{2}\right)
$$

合并：

$$
\int \frac{x^{3} + 1}{x^{2} + 1}\,dx = \frac{x^{2}}{2} + \arctan x - \frac{1}{2}\ln\left(1 + x^{2}\right) + C
$$

### 例题 5

求 $\displaystyle\int \frac{x^{2} + 2}{x\left(x^{2} + 1\right)}\,dx$.

### 例题解答 5

分母是"一次 $\times$ 不可约二次"，设

$$
\frac{x^{2} + 2}{x\left(x^{2} + 1\right)} = \frac{A}{x} + \frac{Bx + C}{x^{2} + 1}
$$

两边乘 $x\left(x^{2} + 1\right)$：

$$
x^{2} + 2 = A\left(x^{2} + 1\right) + x(Bx + C)
$$

代 $x = 0$：$2 = A$；比较 $x^{2}$ 系数：$1 = A + B$，$B = -1$；比较 $x$ 系数：$0 = C$. 于是

$$
\int \frac{x^{2} + 2}{x\left(x^{2} + 1\right)}\,dx
= \int \left(\frac{2}{x} - \frac{x}{x^{2} + 1}\right)dx
= 2\ln\lvert x\rvert - \frac{1}{2}\ln\left(x^{2} + 1\right) + C
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 假分式（分子次数 $\ge$ 分母次数） | 先长除法分出多项式，剩下的真分式再拆 |
| 分母全是互异一次因式 | 每个因式配一个 $\dfrac{A}{x - a}$，代根求系数最快 |
| 分母有 $k$ 重因式 | 从一次幂一直写到 $k$ 次幂，少写一项就错 |
| 分母是不可约二次 | 分子凑分母的导数，剩余部分配方 + 反正切 |
| 求系数 | 代根法快；根不好代就用"比较同次幂系数"列方程组 |
| 拆完后有 $\dfrac{A}{(x - a)^{2}}$ | 直接用幂函数公式，别硬凑对数 |

### 易错点

暂时留空

## 三角函数有理式的积分

### 定义

由 $\sin x$、$\cos x$ 经过有限次加减乘除构成的式子，叫**三角函数有理式**，记作 $R\left(\sin x, \cos x\right)$. 本节只处理两类：$\sin^{m}x\cos^{n}x$ 型和"分子分母都是 $\sin$、$\cos$ 的一次式"型.

### 常用结论

**第一类：$\displaystyle\int \sin^{m}x\cos^{n}x\,dx$**

| $\sin$、$\cos$ 的幂次情况 | 手法 |
| :--- | :--- |
| $n$ 为奇数 | 拆出一个 $\cos x\,dx$ 凑 $d\sin x$，剩下的 $\cos^{2}x$ 全部换成 $1 - \sin^{2}x$，令 $u = \sin x$ |
| $m$ 为奇数 | 拆出一个 $\sin x\,dx$ 凑 $-d\cos x$，剩下的 $\sin^{2}x$ 换成 $1 - \cos^{2}x$，令 $u = \cos x$ |
| $m$、$n$ 都是偶数 | 降幂：$\sin^{2}x = \dfrac{1 - \cos 2x}{2}$，$\cos^{2}x = \dfrac{1 + \cos 2x}{2}$，$\sin x\cos x = \dfrac{\sin 2x}{2}$ |

**第二类：万能代换**（把三角函数有理式化成有理函数）

令 $t = \tan\dfrac{x}{2}$，则

$$
\sin x = \frac{2t}{1 + t^{2}},
\qquad
\cos x = \frac{1 - t^{2}}{1 + t^{2}},
\qquad
dx = \frac{2\,dt}{1 + t^{2}}
$$

万能代换**一定能算出来**，但是计算量大，只在其它办法都不好使时才用（分母是 $\sin x$、$\cos x$ 的一次式、常数项不为零时最典型）.

**辅助角公式**（分母是 $a\sin x + b\cos x$ 时先并成一项）：

$$
a\sin x + b\cos x = \sqrt{a^{2} + b^{2}}\sin\left(x + \varphi\right),
\qquad \tan\varphi = \frac{b}{a}
$$

### 例题 1

求 $\displaystyle\int \sin^{3}x\,dx$.

### 例题解答 1

$\sin$ 的幂次是奇数，拆一个 $\sin x\,dx$ 出去并将 $\sin^{2}x$ 换成 $1 - \cos^{2}x$：

$$
\int \sin^{3}x\,dx = \int \left(1 - \cos^{2}x\right)\sin x\,dx = -\int \left(1 - u^{2}\right)du = -u + \frac{u^{3}}{3} + C
$$

回代 $u = \cos x$：

$$
\int \sin^{3}x\,dx = -\cos x + \frac{\cos^{3}x}{3} + C
$$

### 例题 2

求 $\displaystyle\int \sin^{2}x\cos^{3}x\,dx$.

### 例题解答 2

$\cos$ 的幂次 $3$ 是奇数，拆一个 $\cos x\,dx$ 凑 $d\sin x$：

$$
\int \sin^{2}x\cos^{3}x\,dx = \int \sin^{2}x\left(1 - \sin^{2}x\right)\cos x\,dx
$$

令 $u = \sin x$：

$$
\int u^{2}\left(1 - u^{2}\right)du = \frac{u^{3}}{3} - \frac{u^{5}}{5} + C
$$

$$
\int \sin^{2}x\cos^{3}x\,dx = \frac{\sin^{3}x}{3} - \frac{\sin^{5}x}{5} + C
$$

### 例题 3

求 $\displaystyle\int \sin^{2}x\cos^{2}x\,dx$.

### 例题解答 3

两个都是偶数，用 $\sin x\cos x = \dfrac{\sin 2x}{2}$ 一步降到位：

$$
\sin^{2}x\cos^{2}x = \left(\frac{\sin 2x}{2}\right)^{2} = \frac{1 - \cos 4x}{8}
$$

$$
\int \sin^{2}x\cos^{2}x\,dx = \frac{1}{8}\int \left(1 - \cos 4x\right)dx = \frac{x}{8} - \frac{\sin 4x}{32} + C
$$

### 例题 4

求 $\displaystyle\int \tan^{3}x\,dx$.

### 例题解答 4

用 $\tan^{2}x = \sec^{2}x - 1$ 把 $\tan$ 的幂次往下压：

$$
\int \tan^{3}x\,dx = \int \tan x\left(\sec^{2}x - 1\right)dx = \int \tan x\sec^{2}x\,dx - \int \tan x\,dx
$$

前一项令 $u = \tan x$，$du = \sec^{2}x\,dx$，得 $\dfrac{\tan^{2}x}{2}$；后一项是基本表：

$$
\int \tan^{3}x\,dx = \frac{\tan^{2}x}{2} + \ln\lvert\cos x\rvert + C
$$

### 例题 5

求 $\displaystyle\int \frac{dx}{1 + \cos x}$.

### 例题解答 5

两种看法，结果一样.

**看法一**：$1 + \cos x = 2\cos^{2}\dfrac{x}{2}$：

$$
\int \frac{dx}{1 + \cos x} = \frac{1}{2}\int \sec^{2}\frac{x}{2}\,dx = \frac{1}{2}\cdot 2\tan\frac{x}{2} + C = \tan\frac{x}{2} + C
$$

**看法二**：万能代换 $t = \tan\dfrac{x}{2}$，$\cos x = \dfrac{1 - t^{2}}{1 + t^{2}}$，$dx = \dfrac{2dt}{1 + t^{2}}$：

$$
\int \frac{dx}{1 + \cos x} = \int \frac{1 + t^{2}}{2}\cdot\frac{2\,dt}{1 + t^{2}} = \int dt = t + C = \tan\frac{x}{2} + C
$$

### 例题 6

求 $\displaystyle\int \frac{dx}{2 + \cos x}$.

### 例题解答 6

分母常数项不为零，凑不成单项，上万能代换. $t = \tan\dfrac{x}{2}$：

$$
2 + \cos x = 2 + \frac{1 - t^{2}}{1 + t^{2}} = \frac{3 + t^{2}}{1 + t^{2}}
$$

$$
\int \frac{dx}{2 + \cos x} = \int \frac{1 + t^{2}}{3 + t^{2}}\cdot\frac{2\,dt}{1 + t^{2}} = 2\int \frac{dt}{3 + t^{2}} = \frac{2}{\sqrt{3}}\arctan\frac{t}{\sqrt{3}} + C
$$

$$
\int \frac{dx}{2 + \cos x} = \frac{2}{\sqrt{3}}\arctan\left(\frac{1}{\sqrt{3}}\tan\frac{x}{2}\right) + C
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| $\sin$ 的奇次幂 | 拆出 $\sin x\,dx$，令 $u = \cos x$，用 $1 - \cos^{2}x$ |
| $\cos$ 的奇次幂 | 拆出 $\cos x\,dx$，令 $u = \sin x$，用 $1 - \sin^{2}x$ |
| $\sin$、$\cos$ 都是偶次幂 | 降幂到 $\cos 2x$、$\cos 4x$ 再积 |
| $\tan^{n}x$ | 用 $\tan^{2}x = \sec^{2}x - 1$ 降幂，直到出现 $\sec^{2}x\,dx$ |
| 分母是 $\sin x$、$\cos x$ 的一次式且无常数项 | 分子分母同除 $\cos x$ 或 $\cos^{2}x$，化 $\tan$ |
| 分母是 $a\sin x + b\cos x + c$ 且 $c \ne 0$ | 万能代换 $t = \tan\dfrac{x}{2}$ |
| 题目限定 $x \in \left(0, \dfrac{\pi}{2}\right)$ | 万能代换可以开方、去绝对值，放心用 |

### 易错点

暂时留空

## 定积分的定义与性质

### 定义

**定积分的四步法**：把区间 $[a, b]$ 任意分成 $n$ 个小区间，第 $i$ 个小区间长度为 $\Delta x_i$，在其中任取一点 $\xi_i$，做和式，再让最大区间长度 $\lambda \to 0$：

$$
\int_{a}^{b} f(x)\,dx = \lim_{\lambda \to 0}\sum_{i=1}^{n} f\left(\xi_i\right)\Delta x_i
$$

若这个极限与分法、与 $\xi_i$ 的取法都无关，就称 $f(x)$ 在 $[a, b]$ 上**可积**，这个极限值叫 $f(x)$ 在 $[a, b]$ 上的**定积分**.

定积分是一个**数**，和积分变量用什么字母无关：

$$
\int_{a}^{b} f(x)\,dx = \int_{a}^{b} f(t)\,dt
$$

### 几何意义

$f(x) \ge 0$ 时，$\displaystyle\int_{a}^{b} f(x)\,dx$ 就是曲线 $y = f(x)$、$x$ 轴、$x = a$、$x = b$ 围成的**曲边梯形的面积**.

$f(x)$ 有正有负时，定积分是**带符号的面积**：$x$ 轴上方的面积记正，下方的面积记负，最后求代数和. 所以 $\displaystyle\int_{0}^{2\pi}\sin x\,dx = 0$ 表示上下两块的面积正好抵消，不表示"没有面积".

### 定理

**定理（可积的充分条件）** 若 $f(x)$ 在 $[a, b]$ 上连续，则 $f(x)$ 在 $[a, b]$ 上可积；若 $f(x)$ 在 $[a, b]$ 上只有有限个第一类间断点且有界，也可积.

### 常用结论

**定积分的七条性质**（$a < b$ 时成立；其中前两条对 $a$、$b$、$c$ 的任意大小关系都成立）.

| 编号 | 性质 | 备注 |
| :--- | :--- | :--- |
| 1 | $\displaystyle\int_{a}^{b}\left[k_1 f(x) + k_2 g(x)\right]dx = k_1\int_{a}^{b} f\,dx + k_2\int_{a}^{b} g\,dx$ | 线性 |
| 2 | $\displaystyle\int_{a}^{b} f\,dx = \int_{a}^{c} f\,dx + \int_{c}^{b} f\,dx$ | 区间可加，$c$ 位置任意 |
| 3 | $\displaystyle\int_{a}^{a} f\,dx = 0$ | 区间可加的特例 |
| 4 | $f(x) \ge 0 \Longrightarrow \displaystyle\int_{a}^{b} f\,dx \ge 0$；$f \le g \Longrightarrow \int f \le \int g$ | 保号性、单调性 |
| 5 | $m(b - a) \le \displaystyle\int_{a}^{b} f\,dx \le M(b - a)$ | 估值，$m$、$M$ 是 $f$ 在区间上的最小值、最大值 |
| 6 | $\left\lvert\displaystyle\int_{a}^{b} f\,dx\right\rvert \le \displaystyle\int_{a}^{b}\lvert f\rvert\,dx$ | 取绝对值放大 |
| 7 | $\exists \xi \in [a, b]$，使 $\displaystyle\int_{a}^{b} f\,dx = f(\xi)(b - a)$ | 积分中值定理，$f$ 连续 |

性质 7 的几何含义：曲边梯形的面积等于某个高为 $f(\xi)$ 的矩形的面积，$f(\xi)$ 就叫 $f$ 在 $[a, b]$ 上的**平均值**：

$$
\bar{f} = \frac{1}{b - a}\int_{a}^{b} f(x)\,dx
$$

### 例题 1

用定义计算 $\displaystyle\int_{0}^{1} x^{2}\,dx$.

### 例题解答 1

按四步法，取 $n$ 等分，$\Delta x = \dfrac{1}{n}$，$\xi_i = \dfrac{i}{n}$（右端点）.

求和：

$$
\sum_{i=1}^{n} f\left(\xi_i\right)\Delta x = \sum_{i=1}^{n}\left(\frac{i}{n}\right)^{2}\cdot\frac{1}{n} = \frac{1}{n^{3}}\sum_{i=1}^{n} i^{2} = \frac{1}{n^{3}}\cdot\frac{n(n+1)(2n+1)}{6}
$$

取极限：

$$
\int_{0}^{1} x^{2}\,dx = \lim_{n\to\infty}\frac{(n+1)(2n+1)}{6n^{2}} = \lim_{n\to\infty}\frac{2n^{2} + 3n + 1}{6n^{2}} = \frac{1}{3}
$$

用牛顿-莱布尼茨公式算一样：$\displaystyle\int_{0}^{1} x^{2}\,dx = \frac{1}{3}$.

### 例题 2

用几何意义求 $\displaystyle\int_{0}^{1}\sqrt{1 - x^{2}}\,dx$.

### 例题解答 2

被积函数满足 $x^{2} + y^{2} = 1$（$y \ge 0$），是单位圆在第一象限的圆弧. 积分就是四分之一单位圆的面积：

$$
\int_{0}^{1}\sqrt{1 - x^{2}}\,dx = \frac{1}{4}\cdot\pi\cdot 1^{2} = \frac{\pi}{4}
$$

### 例题 3

估计 $\displaystyle\int_{0}^{1} e^{-x^{2}}\,dx$ 的值.

### 例题解答 3

$e^{-x^{2}}$ 在 $[0, 1]$ 上单调递减，所以最大值在左端点、最小值在右端点：

$$
m = f(1) = e^{-1} = \frac{1}{e},
\qquad
M = f(0) = 1
$$

由估值性质：

$$
\frac{1}{e}\cdot 1 \le \int_{0}^{1} e^{-x^{2}}\,dx \le 1\cdot 1
$$

即

$$
0.367 \approx \frac{1}{e} \le \int_{0}^{1} e^{-x^{2}}\,dx \le 1
$$

（这个积分没有初等原函数，考试里只能估值或者考它的变上限形式.）

### 例题 4

比较 $\displaystyle\int_{0}^{1} x\,dx$ 与 $\displaystyle\int_{0}^{1} x^{2}\,dx$ 的大小.

### 例题解答 4

在 $[0, 1]$ 上有 $x \ge x^{2}$，由单调性：

$$
\int_{0}^{1} x\,dx \ge \int_{0}^{1} x^{2}\,dx
$$

具体数值：前者 $\dfrac{1}{2}$，后者 $\dfrac{1}{3}$，确实前者大.

### 例题 5

设 $f(x)$ 在 $[a, b]$ 上连续，证明存在 $\xi \in [a, b]$，使 $\displaystyle\int_{a}^{b} f(x)\,dx = f(\xi)(b - a)$.

### 例题解答 5

$f$ 连续，故在 $[a, b]$ 上取到最小值 $m$ 和最大值 $M$，且 $m \le f(x) \le M$. 由估值性质：

$$
m(b - a) \le \int_{a}^{b} f(x)\,dx \le M(b - a)
$$

除以 $b - a > 0$：

$$
m \le \frac{1}{b - a}\int_{a}^{b} f(x)\,dx \le M
$$

由介值定理（连续函数取遍最小值与最大值之间的一切值），存在 $\xi \in [a, b]$ 使

$$
f(\xi) = \frac{1}{b - a}\int_{a}^{b} f(x)\,dx
$$

移项即得结论.

### 例题 6

计算 $\displaystyle\int_{-1}^{2}\lvert x\rvert\,dx$.

### 例题解答 6

被积函数在 $[-1, 0]$ 上是 $-x$，在 $[0, 2]$ 上是 $x$，用区间可加拆开：

$$
\int_{-1}^{2}\lvert x\rvert\,dx = \int_{-1}^{0}(-x)\,dx + \int_{0}^{2} x\,dx = \frac{1}{2} + 2 = \frac{5}{2}
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 用定义计算 | 取 $n$ 等分 + 右端点，套 $\sum i$、$\sum i^{2}$ 公式，再取极限 |
| 被积函数是 $\sqrt{a^{2} - x^{2}}$ 且区间为 $[0, a]$ | 几何意义，四分之一圆面积 |
| 估计积分值 | 找 $[a, b]$ 上的最小值 $m$、最大值 $M$，用 $m(b - a)$ 与 $M(b - a)$ 夹 |
| 比较两个积分大小 | 先比较被积函数，用单调性 |
| 证明"存在 $\xi$ 使积分等于…" | 估值 + 介值定理，就是积分中值定理的证明 |
| 被积函数含绝对值、分段 | 按零点拆区间，各段分别算 |
| 定积分结果与积分变量无关 | 换 $x$、$t$、$u$ 随便写，但别在同一个式子里混用 |

### 易错点

暂时留空

## 微积分基本公式（牛顿-莱布尼茨公式）

### 定义

**变上限积分函数**：设 $f(x)$ 在 $[a, b]$ 上连续，$x \in [a, b]$，记

$$
\Phi(x) = \int_{a}^{x} f(t)\,dt
$$

它把上限 $x$ 当成了自变量，所以 $\Phi(x)$ 是一个**函数**——这一点是整节的核心.

### 定理

**定理 1（变上限积分求导）** 若 $f(x)$ 在 $[a, b]$ 上连续，则 $\Phi(x) = \displaystyle\int_{a}^{x} f(t)\,dt$ 在 $[a, b]$ 上可导，且

$$
\Phi'(x) = \frac{d}{dx}\int_{a}^{x} f(t)\,dt = f(x)
$$

这说明连续函数一定有原函数，且 $\displaystyle\int_{a}^{x} f(t)\,dt$ 就是 $f$ 的一个原函数.

**定理 2（牛顿-莱布尼茨公式）** 若 $F(x)$ 是 $f(x)$ 在 $[a, b]$ 上的一个原函数，则

$$
\int_{a}^{b} f(x)\,dx = \left[F(x)\right]_{a}^{b} = F(b) - F(a)
$$

这个公式把"求面积（极限）"和"求原函数"两件事打通了，定积分的计算从此变成"找原函数、代上下限、相减".

**变上限的复合形式**（考试最爱考）：

$$
\frac{d}{dx}\int_{a}^{\varphi(x)} f(t)\,dt = f\left(\varphi(x)\right)\varphi'(x)
$$

$$
\frac{d}{dx}\int_{\psi(x)}^{\varphi(x)} f(t)\,dt = f\left(\varphi(x)\right)\varphi'(x) - f\left(\psi(x)\right)\psi'(x)
$$

### 例题 1

求 $\displaystyle\frac{d}{dx}\int_{0}^{x}\sin t\,dt$.

### 例题解答 1

被积函数连续，直接套定理 1：

$$
\frac{d}{dx}\int_{0}^{x}\sin t\,dt = \sin x
$$

### 例题 2

求 $\displaystyle\frac{d}{dx}\int_{0}^{x^{2}}\sin t\,dt$.

### 例题解答 2

上限是 $x^{2}$，用复合形式，$\varphi(x) = x^{2}$、$\varphi'(x) = 2x$：

$$
\frac{d}{dx}\int_{0}^{x^{2}}\sin t\,dt = \sin\left(x^{2}\right)\cdot 2x = 2x\sin\left(x^{2}\right)
$$

### 例题 3

求 $\displaystyle\frac{d}{dx}\int_{x}^{x^{2}} e^{t^{2}}\,dt$.

### 例题解答 3

上下限都含 $x$：

$$
\frac{d}{dx}\int_{x}^{x^{2}} e^{t^{2}}\,dt = e^{\left(x^{2}\right)^{2}}\cdot 2x - e^{x^{2}}\cdot 1 = 2x e^{x^{4}} - e^{x^{2}}
$$

### 例题 4

求 $\displaystyle\lim_{x\to 0}\frac{\displaystyle\int_{0}^{x}\sin t^{2}\,dt}{x^{3}}$.

### 例题解答 4

$\dfrac{0}{0}$ 型，分子分母都可导，用洛必达法则，分子求导用定理 1：

$$
\lim_{x\to 0}\frac{\displaystyle\int_{0}^{x}\sin t^{2}\,dt}{x^{3}}
= \lim_{x\to 0}\frac{\sin x^{2}}{3x^{2}}
= \lim_{x\to 0}\frac{x^{2}}{3x^{2}} = \frac{1}{3}
$$

最后一步用了 $\sin u \sim u$（$u \to 0$）.

### 例题 5

计算 $\displaystyle\int_{0}^{\frac{\pi}{2}}\cos x\,dx$.

### 例题解答 5

找原函数 $F(x) = \sin x$，套牛顿-莱布尼茨：

$$
\int_{0}^{\frac{\pi}{2}}\cos x\,dx = \sin x\Big|_{0}^{\frac{\pi}{2}} = \sin\frac{\pi}{2} - \sin 0 = 1 - 0 = 1
$$

### 例题 6

计算 $\displaystyle\int_{0}^{2}\lvert x - 1\rvert\,dx$.

### 例题解答 6

$f(x)$ 在 $x = 1$ 处分段，按分段点拆：

$$
\int_{0}^{2}\lvert x - 1\rvert\,dx = \int_{0}^{1}(1 - x)\,dx + \int_{1}^{2}(x - 1)\,dx
$$

$$
= \left[x - \frac{x^{2}}{2}\right]_{0}^{1} + \left[\frac{x^{2}}{2} - x\right]_{1}^{2} = \frac{1}{2} + \frac{1}{2} = 1
$$

### 例题 7

若 $f(x)$ 连续且 $\displaystyle\int_{0}^{x} f(t)\,dt = x^{2}$，求 $f(x)$.

### 例题解答 7

两边对 $x$ 求导，左边用定理 1：

$$
f(x) = 2x
$$

验算：$\displaystyle\int_{0}^{x} 2t\,dt = x^{2}$，确实成立.

### 例题 8

计算 $\displaystyle\int_{1}^{e}\frac{dx}{x}$.

### 例题解答 8

原函数 $\ln x$：

$$
\int_{1}^{e}\frac{dx}{x} = \ln x\Big|_{1}^{e} = \ln e - \ln 1 = 1
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 求变上限积分的导数 | 上限是 $x$ 就直接换字母；上限是 $\varphi(x)$ 就乘 $\varphi'(x)$；上下限都含 $x$ 就"上限导 $-$ 下限导" |
| 变上限积分参与的 $\dfrac{0}{0}$ 极限 | 洛必达，对变上限积分求导那一项直接用定理 1 |
| 验证某个 $f$ 是某积分的原函数 | 对 $\displaystyle\int_{a}^{x} f$ 求导，看是否回到 $f$ |
| 已知变上限积分等于某式子求 $f$ | 两边求导 |
| 计算定积分 | 找原函数 $\rightarrow$ 代上下限 $\rightarrow$ 相减，一步到位 |
| 被积函数分段、含绝对值 | 按分界点拆区间，分别用公式再相加 |

### 易错点

暂时留空

## 定积分的换元法与分部积分

### 定理

**定理 1（定积分的换元法）** 设 $f(x)$ 在 $[a, b]$ 上连续，$x = \varphi(t)$ 在 $[\alpha, \beta]$ 上单调可导，$\varphi(\alpha) = a$、$\varphi(\beta) = b$，则

$$
\int_{a}^{b} f(x)\,dx = \int_{\alpha}^{\beta} f\left(\varphi(t)\right)\varphi'(t)\,dt
$$

**关键**：定积分换元**必须同时换上下限**，而且结果**不需要回代**——新变量算出来的数就是原积分的值. 这是和不定积分换元最大的区别.

**定理 2（定积分的分部积分）**

$$
\int_{a}^{b} u\,dv = \left[uv\right]_{a}^{b} - \int_{a}^{b} v\,du
$$

即

$$
\int_{a}^{b} u(x)v'(x)\,dx = \left[u(x)v(x)\right]_{a}^{b} - \int_{a}^{b} v(x)u'(x)\,dx
$$

### 常用结论

**对称区间上的奇偶性**（考试出现率最高的一条技巧）：

$$
\int_{-a}^{a} f(x)\,dx =
\begin{cases}
0, & f(x) \text{ 为奇函数} \\[8pt]
2\displaystyle\int_{0}^{a} f(x)\,dx, & f(x) \text{ 为偶函数}
\end{cases}
$$

**周期函数的平移不变性**：$f(x)$ 以 $T$ 为周期时

$$
\int_{a}^{a+T} f(x)\,dx = \int_{0}^{T} f(x)\,dx
$$

**两条常用换元结论**（$f$ 连续）：

$$
\int_{0}^{\frac{\pi}{2}} f(\sin x)\,dx = \int_{0}^{\frac{\pi}{2}} f(\cos x)\,dx
$$

$$
\int_{0}^{\pi} x f(\sin x)\,dx = \frac{\pi}{2}\int_{0}^{\pi} f(\sin x)\,dx
$$

第二条就是"用 $x = \pi - t$ 把 $x$ 搬到常数位置"的技巧，被积函数里出现 $x f(\sin x)$ 时几乎只能靠它.

### 例题 1

计算 $\displaystyle\int_{0}^{a}\sqrt{a^{2} - x^{2}}\,dx$（$a > 0$）.

### 例题解答 1

令 $x = a\sin t$，$dx = a\cos t\,dt$. 换限：$x = 0$ 时 $t = 0$；$x = a$ 时 $t = \dfrac{\pi}{2}$.

$$
\int_{0}^{a}\sqrt{a^{2} - x^{2}}\,dx = \int_{0}^{\frac{\pi}{2}} a\cos t\cdot a\cos t\,dt = a^{2}\int_{0}^{\frac{\pi}{2}}\cos^{2}t\,dt
$$

$$
= a^{2}\cdot\frac{\pi}{4} = \frac{\pi a^{2}}{4}
$$

（$\displaystyle\int_{0}^{\frac{\pi}{2}}\cos^{2}t\,dt = \frac{\pi}{4}$ 也可以直接由"四分之一圆面积 $\pi a^{2}/4$ 除以 $a^{2}$"看出.）

### 例题 2

计算 $\displaystyle\int_{0}^{\frac{\pi}{2}}\cos^{3}x\,dx$.

### 例题解答 2

$\cos$ 是奇次幂，拆一个 $\cos x\,dx$ 凑 $d\sin x$，同时换限：

$$
\int_{0}^{\frac{\pi}{2}}\cos^{3}x\,dx = \int_{0}^{\frac{\pi}{2}}\left(1 - \sin^{2}x\right)\cos x\,dx = \int_{0}^{1}\left(1 - u^{2}\right)du
$$

$$
= \left[u - \frac{u^{3}}{3}\right]_{0}^{1} = \frac{2}{3}
$$

换元过程中 $u = \sin x$ 从 $0$ 到 $1$，旧限直接换成了新限，最后不用回代.

### 例题 3

计算 $\displaystyle\int_{-1}^{1}\left(x^{3} + x^{2}\right)dx$.

### 例题解答 3

区间对称，拆成奇函数部分 + 偶函数部分：

- $x^{3}$ 是奇函数，积分为 $0$；
- $x^{2}$ 是偶函数，积分为 $2\displaystyle\int_{0}^{1} x^{2}\,dx = \dfrac{2}{3}$.

$$
\int_{-1}^{1}\left(x^{3} + x^{2}\right)dx = 0 + \frac{2}{3} = \frac{2}{3}
$$

### 例题 4

计算 $\displaystyle\int_{0}^{\pi} x\sin x\,dx$.

### 例题解答 4

分部积分，$u = x$、$dv = \sin x\,dx$，$v = -\cos x$：

$$
\int_{0}^{\pi} x\sin x\,dx = \left[-x\cos x\right]_{0}^{\pi} + \int_{0}^{\pi}\cos x\,dx
$$

$$
= \left(-\pi\cdot(-1) - 0\right) + \left[\sin x\right]_{0}^{\pi} = \pi + 0 = \pi
$$

### 例题 5

计算 $\displaystyle\int_{0}^{\pi}\frac{x\sin x}{1 + \cos^{2}x}\,dx$.

### 例题解答 5

出现 $x$ 乘 $\sin$ 的有理式，用换元 $x = \pi - t$ 把 $x$ 搬走. 记 $I$ 为所求积分：

$$
I = \int_{0}^{\pi}\frac{x\sin x}{1 + \cos^{2}x}\,dx
$$

令 $x = \pi - t$，$dx = -dt$，$\sin(\pi - t) = \sin t$，$\cos(\pi - t) = -\cos t$，限从 $\pi \to 0$ 变成 $0 \to \pi$：

$$
I = \int_{0}^{\pi}\frac{(\pi - t)\sin t}{1 + \cos^{2}t}\,dt = \pi\int_{0}^{\pi}\frac{\sin t}{1 + \cos^{2}t}\,dt - I
$$

于是

$$
2I = \pi\int_{0}^{\pi}\frac{\sin t}{1 + \cos^{2}t}\,dt
$$

右边换元 $u = \cos t$：

$$
\int_{0}^{\pi}\frac{\sin t}{1 + \cos^{2}t}\,dt = \int_{1}^{-1}\frac{-du}{1 + u^{2}} = \int_{-1}^{1}\frac{du}{1 + u^{2}} = \arctan u\Big|_{-1}^{1} = \frac{\pi}{2}
$$

所以

$$
2I = \pi\cdot\frac{\pi}{2} \Longrightarrow I = \frac{\pi^{2}}{4}
$$

### 例题 6

计算 $\displaystyle\int_{1}^{e}\ln x\,dx$.

### 例题解答 6

分部积分，$u = \ln x$、$dv = dx$：

$$
\int_{1}^{e}\ln x\,dx = \left[x\ln x\right]_{1}^{e} - \int_{1}^{e} dx = e - \left(e - 1\right) = 1
$$

### 例题 7

计算 $\displaystyle\int_{0}^{1} x e^{-x}\,dx$.

### 例题解答 7

$u = x$、$dv = e^{-x}dx$，$v = -e^{-x}$：

$$
\int_{0}^{1} x e^{-x}\,dx = \left[-x e^{-x}\right]_{0}^{1} + \int_{0}^{1} e^{-x}\,dx = -e^{-1} + \left[-e^{-x}\right]_{0}^{1} = -e^{-1} + \left(1 - e^{-1}\right) = 1 - \frac{2}{e}
$$

### 例题 8

计算 $\displaystyle\int_{0}^{2\pi}\sin^{2}x\,dx$.

### 例题解答 8

方法一，降幂：

$$
\int_{0}^{2\pi}\sin^{2}x\,dx = \int_{0}^{2\pi}\frac{1 - \cos 2x}{2}\,dx = \frac{1}{2}\left[x - \frac{\sin 2x}{2}\right]_{0}^{2\pi} = \pi
$$

方法二，利用周期：$\sin^{2}x$ 以 $\pi$ 为周期，

$$
\int_{0}^{2\pi}\sin^{2}x\,dx = 2\int_{0}^{\pi}\sin^{2}x\,dx = 2\cdot\frac{\pi}{2} = \pi
$$

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 含 $\sqrt{a^{2} - x^{2}}$ 的定积分 | 三角代换，同换限，不必回代 |
| 区间对称 $\left[-a, a\right]$ | 先拆奇偶，奇函数直接 $0$，偶函数算一半乘 $2$ |
| 被积函数含 $x f(\sin x)$ | 用 $x = \pi - t$ 换元，把 $x$ 变成常数 |
| 周期函数 | 先平移到 $[0, T]$ 再算 |
| 定积分分部积分 | 注意 $\left[uv\right]_{a}^{b}$ 这一项要代值，别只写 $uv$ |
| 换元后上下限反了 | 用 $\displaystyle\int_{a}^{b} = -\int_{b}^{a}$ 调回来，别丢负号 |
| 换元函数在区间上不单调 | 必须分段换限，或者换一个单调的换元 |

### 易错点

暂时留空

## 反常积分

### 定义

**两类反常积分**，共同点是"把有限区间的定积分取极限".

**第一类：无穷限的反常积分**

$$
\int_{a}^{+\infty} f(x)\,dx = \lim_{b\to +\infty}\int_{a}^{b} f(x)\,dx
$$

$$
\int_{-\infty}^{b} f(x)\,dx = \lim_{a\to -\infty}\int_{a}^{b} f(x)\,dx
$$

$$
\int_{-\infty}^{+\infty} f(x)\,dx = \int_{-\infty}^{c} f(x)\,dx + \int_{c}^{+\infty} f(x)\,dx
$$

**第二类：无界函数（瑕积分）**

设 $f(x)$ 在 $a$ 的右邻域内无界（$a$ 叫**瑕点**），则

$$
\int_{a}^{b} f(x)\,dx = \lim_{\varepsilon\to 0^{+}}\int_{a+\varepsilon}^{b} f(x)\,dx
$$

瑕点在内部时，也要按瑕点把区间拆开，各自取极限.

极限存在且为有限数时称反常积分**收敛**，否则称**发散**——发散不等于 "等于无穷大"，就是没算出来.

### 常用结论

**两个 $p$ 积分判据**（工科必须背，比算原函数快得多）：

$$
\int_{1}^{+\infty}\frac{dx}{x^{p}}
\ \text{收敛} \iff p > 1
$$

$$
\int_{0}^{1}\frac{dx}{x^{p}}
\ \text{收敛} \iff p < 1
$$

同样是 $\dfrac{1}{x^{p}}$，在 $[1, +\infty)$ 上要 $p$ 大才收敛，在 $(0, 1]$ 上要 $p$ 小才收敛——因为指数越大，$\dfrac{1}{x^{p}}$ 在 $x\to 0^{+}$ 时涨得越快.

常用的几个具体值：

$$
\int_{1}^{+\infty}\frac{dx}{x^{2}} = 1,
\qquad
\int_{0}^{1}\frac{dx}{\sqrt{x}} = 2,
\qquad
\int_{0}^{+\infty} e^{-x}\,dx = 1,
\qquad
\int_{0}^{+\infty}\frac{dx}{1 + x^{2}} = \frac{\pi}{2}
$$

**比较判别法**（只需要判断收敛性时用）：非负函数 $0 \le f(x) \le g(x)$，

- $\displaystyle\int g$ 收敛 $\Longrightarrow \displaystyle\int f$ 收敛；
- $\displaystyle\int f$ 发散 $\Longrightarrow \displaystyle\int g$ 发散.

### 例题 1

计算 $\displaystyle\int_{1}^{+\infty}\frac{dx}{x^{2}}$.

### 例题解答 1

$$
\int_{1}^{+\infty}\frac{dx}{x^{2}} = \lim_{b\to +\infty}\int_{1}^{b} x^{-2}\,dx = \lim_{b\to +\infty}\left[-\frac{1}{x}\right]_{1}^{b} = \lim_{b\to +\infty}\left(1 - \frac{1}{b}\right) = 1
$$

### 例题 2

计算 $\displaystyle\int_{0}^{1}\frac{dx}{\sqrt{x}}$.

### 例题解答 2

$x = 0$ 是瑕点，按定义取极限：

$$
\int_{0}^{1}\frac{dx}{\sqrt{x}} = \lim_{\varepsilon\to 0^{+}}\int_{\varepsilon}^{1} x^{-1/2}\,dx = \lim_{\varepsilon\to 0^{+}}\left[2\sqrt{x}\right]_{\varepsilon}^{1} = \lim_{\varepsilon\to 0^{+}}\left(2 - 2\sqrt{\varepsilon}\right) = 2
$$

### 例题 3

计算 $\displaystyle\int_{0}^{+\infty} e^{-x}\,dx$.

### 例题解答 3

$$
\int_{0}^{+\infty} e^{-x}\,dx = \lim_{b\to +\infty}\left[-e^{-x}\right]_{0}^{b} = \lim_{b\to +\infty}\left(1 - e^{-b}\right) = 1
$$

### 例题 4

计算 $\displaystyle\int_{0}^{+\infty}\frac{dx}{1 + x^{2}}$.

### 例题解答 4

$$
\int_{0}^{+\infty}\frac{dx}{1 + x^{2}} = \lim_{b\to +\infty}\left[\arctan x\right]_{0}^{b} = \frac{\pi}{2} - 0 = \frac{\pi}{2}
$$

### 例题 5

计算 $\displaystyle\int_{1}^{+\infty}\frac{\ln x}{x^{2}}\,dx$.

### 例题解答 5

先分部积分，$u = \ln x$、$dv = \dfrac{dx}{x^{2}}$，$v = -\dfrac{1}{x}$：

$$
\int_{1}^{b}\frac{\ln x}{x^{2}}\,dx = \left[-\frac{\ln x}{x}\right]_{1}^{b} + \int_{1}^{b}\frac{dx}{x^{2}} = -\frac{\ln b}{b} + \left[-\frac{1}{x}\right]_{1}^{b} = -\frac{\ln b}{b} + 1 - \frac{1}{b}
$$

取极限 $b\to +\infty$，由洛必达法则 $\lim\limits_{b\to +\infty}\dfrac{\ln b}{b} = 0$，故

$$
\int_{1}^{+\infty}\frac{\ln x}{x^{2}}\,dx = 1
$$

### 例题 6

计算 $\displaystyle\int_{0}^{1}\ln x\,dx$.

### 例题解答 6

$x = 0$ 是瑕点，但 $\ln x$ 的原函数好求：

$$
\int_{\varepsilon}^{1}\ln x\,dx = \left[x\ln x - x\right]_{\varepsilon}^{1} = -1 - \left(\varepsilon\ln\varepsilon - \varepsilon\right)
$$

取极限 $\varepsilon\to 0^{+}$，用 $\lim\limits_{\varepsilon\to 0^{+}}\varepsilon\ln\varepsilon = 0$：

$$
\int_{0}^{1}\ln x\,dx = -1 - 0 = -1
$$

注意：**结果是负数是对的**，$\ln x$ 在 $(0, 1)$ 上恒负.

### 例题 7

计算 $\displaystyle\int_{0}^{+\infty} x e^{-x}\,dx$.

### 例题解答 7

先分部积分，$u = x$、$dv = e^{-x}dx$：

$$
\int_{0}^{b} x e^{-x}\,dx = \left[-x e^{-x}\right]_{0}^{b} + \int_{0}^{b} e^{-x}\,dx = -\frac{b}{e^{b}} + \left(1 - e^{-b}\right)
$$

取极限 $b\to +\infty$，由 $\lim\limits_{b\to +\infty}\dfrac{b}{e^{b}} = 0$：

$$
\int_{0}^{+\infty} x e^{-x}\,dx = 0 + 1 = 1
$$

### 例题 8

判断 $\displaystyle\int_{1}^{+\infty}\frac{dx}{\sqrt{x}}$ 是否收敛.

### 例题解答 8

按定义算：

$$
\int_{1}^{+\infty}\frac{dx}{\sqrt{x}} = \lim_{b\to +\infty}\left[2\sqrt{x}\right]_{1}^{b} = \lim_{b\to +\infty}\left(2\sqrt{b} - 2\right) = +\infty
$$

极限不是有限数，所以**发散**. 用 $p$ 判据也能立刻看出：这里 $p = \dfrac{1}{2} \le 1$，发散.

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 无穷限积分 | 上限换成 $b$，算完取 $\lim_{b\to +\infty}$，结果有限才叫收敛 |
| 瑕积分（分母在端点为零、含 $\ln x$、$\sqrt{x}$） | 瑕点写成 $a + \varepsilon$ 或 $b - \varepsilon$，算完取 $\varepsilon\to 0^{+}$ |
| 判断收敛性、不必算值 | 直接套 $p$ 判据，或与 $\dfrac{1}{x^{p}}$ 比较 |
| 被积函数是 $x^{n}$ 乘对数、指数 | 先分部降次，再取极限 |
| 极限里出现 $\dfrac{\ln b}{b}$、$\dfrac{b}{e^{b}}$ | 洛必达化 $\dfrac{0}{0}$、$\dfrac{\infty}{\infty}$，结果都是 $0$ |
| 区间两端都是瑕点或都无穷 | 在中间取一个 $c$，拆成两个各自取极限，两个都收敛才算收敛 |

### 易错点

暂时留空

## 定积分的几何应用

### 定义

本节只做三件事：**算面积、算体积、算弧长**. 全部公式都是"微元 $dA$、$dV$、$ds$ 积分起来"的结果，工科考试要求**会套公式、会定限**.

### 常用结论

**一、平面图形的面积**

| 情形 | 公式 |
| :--- | :--- |
| 上下曲线夹成：$g(x) \le y \le f(x)$，$x \in [a, b]$ | $\displaystyle S = \int_{a}^{b}\left[f(x) - g(x)\right]dx$ |
| 左右曲线夹成：$x \in [\psi(y), \varphi(y)]$，$y \in [c, d]$ | $\displaystyle S = \int_{c}^{d}\left[\varphi(y) - \psi(y)\right]dy$ |
| 参数方程 $x = x(t)$、$y = y(t)$，$t \in [\alpha, \beta]$ | $\displaystyle S = \int_{\alpha}^{\beta} y(t)x'(t)\,dt$（上下曲线作差时对 $y$ 作差） |
| 极坐标 $\rho = \rho(\theta)$，$\theta \in [\alpha, \beta]$ | $\displaystyle S = \frac{1}{2}\int_{\alpha}^{\beta}\rho^{2}(\theta)\,d\theta$ |

**二、旋转体的体积**

| 旋转方式 | 公式 | 记忆点 |
| :--- | :--- | :--- |
| 曲边梯形绕 $x$ 轴旋转，$x \in [a, b]$ | $\displaystyle V = \pi\int_{a}^{b} f^{2}(x)\,dx$ | 圆盘法，半径是 $f(x)$ |
| 由 $y = f(x)$、$x$ 轴、$x = a$、$x = b$ 绕 $y$ 轴旋转 | $\displaystyle V = 2\pi\int_{a}^{b} x f(x)\,dx$ | 柱壳法，周长 $2\pi x$ 乘高 $f(x)$ |
| 已知平行截面面积 $A(x)$，$x \in [a, b]$ | $\displaystyle V = \int_{a}^{b} A(x)\,dx$ | 万能公式，前两个都是它的特例 |

**三、曲线弧长**

| 曲线形式 | 公式 |
| :--- | :--- |
| 直角坐标 $y = f(x)$，$x \in [a, b]$ | $\displaystyle s = \int_{a}^{b}\sqrt{1 + \left[f'(x)\right]^{2}}\,dx$ |
| 参数方程 $\left(x(t), y(t)\right)$，$t \in [\alpha, \beta]$ | $\displaystyle s = \int_{\alpha}^{\beta}\sqrt{\left[x'(t)\right]^{2} + \left[y'(t)\right]^{2}}\,dt$ |
| 极坐标 $\rho = \rho(\theta)$，$\theta \in [\alpha, \beta]$ | $\displaystyle s = \int_{\alpha}^{\beta}\sqrt{\rho^{2}(\theta) + \left[\rho'(\theta)\right]^{2}}\,d\theta$ |

### 例题 1

求抛物线 $y = x^{2}$ 与直线 $y = 2x$ 所围图形的面积.

### 例题解答 1

先求交点：$x^{2} = 2x \Rightarrow x = 0, 2$. 在 $(0, 2)$ 内 $2x > x^{2}$，所以上曲线是 $y = 2x$、下曲线是 $y = x^{2}$：

$$
S = \int_{0}^{2}\left(2x - x^{2}\right)dx = \left[x^{2} - \frac{x^{3}}{3}\right]_{0}^{2} = 4 - \frac{8}{3} = \frac{4}{3}
$$

### 例题 2

求曲线 $y = x^{2}$ 与 $y = 2 - x^{2}$ 所围图形的面积.

### 例题解答 2

交点：$x^{2} = 2 - x^{2} \Rightarrow x = \pm 1$. 在 $(-1, 1)$ 内 $2 - x^{2} \ge x^{2}$：

$$
S = \int_{-1}^{1}\left[\left(2 - x^{2}\right) - x^{2}\right]dx = \int_{-1}^{1}\left(2 - 2x^{2}\right)dx = 2\int_{0}^{1}\left(2 - 2x^{2}\right)dx = 2\left(2 - \frac{2}{3}\right) = \frac{8}{3}
$$

（区间对称、被积函数是偶函数，所以算一半乘 $2$.）

### 例题 3

求摆线

$$
\begin{cases}
x = a\left(t - \sin t\right) \\[4pt]
y = a\left(1 - \cos t\right)
\end{cases}
\qquad (0 \le t \le 2\pi)
$$

一拱与 $x$ 轴所围图形的面积.

### 例题解答 3

参数方程求面积用 $S = \displaystyle\int_{\alpha}^{\beta} y(t)x'(t)\,dt$，其中 $x'(t) = a\left(1 - \cos t\right)$：

$$
S = \int_{0}^{2\pi} a\left(1 - \cos t\right)\cdot a\left(1 - \cos t\right)dt = a^{2}\int_{0}^{2\pi}\left(1 - \cos t\right)^{2}dt
$$

展开：

$$
\left(1 - \cos t\right)^{2} = 1 - 2\cos t + \cos^{2}t = \frac{3}{2} - 2\cos t + \frac{1}{2}\cos 2t
$$

$$
S = a^{2}\left[\frac{3}{2}t - 2\sin t + \frac{1}{4}\sin 2t\right]_{0}^{2\pi} = a^{2}\cdot 3\pi = 3\pi a^{2}
$$

### 例题 4

求心形线 $\rho = a\left(1 + \cos\theta\right)$（$a > 0$）所围图形的面积.

### 例题解答 4

极坐标面积公式 $S = \dfrac{1}{2}\displaystyle\int_{\alpha}^{\beta}\rho^{2}\,d\theta$，心形线一圈 $\theta \in [0, 2\pi]$：

$$
S = \frac{1}{2}\int_{0}^{2\pi} a^{2}\left(1 + \cos\theta\right)^{2}d\theta
$$

展开并用 $\cos\theta$ 在一个周期上积分为 $0$：

$$
\left(1 + \cos\theta\right)^{2} = 1 + 2\cos\theta + \cos^{2}\theta,
\qquad
\int_{0}^{2\pi}\cos^{2}\theta\,d\theta = \pi
$$

$$
S = \frac{a^{2}}{2}\left(2\pi + 0 + \pi\right) = \frac{3\pi a^{2}}{2}
$$

### 例题 5

求 $y = \sqrt{x}$、$x$ 轴、$x = 1$ 围成的图形绕 $x$ 轴旋转所得旋转体的体积.

### 例题解答 5

圆盘法，半径就是 $f(x) = \sqrt{x}$：

$$
V = \pi\int_{0}^{1}\left(\sqrt{x}\right)^{2}dx = \pi\int_{0}^{1} x\,dx = \frac{\pi}{2}
$$

### 例题 6

求 $y = x^{2}$、$x$ 轴、$x = 1$ 围成的图形绕 $y$ 轴旋转所得旋转体的体积.

### 例题解答 6

绕 $y$ 轴用柱壳法，$x$ 从 $0$ 到 $1$，柱壳半径 $x$、高 $x^{2}$：

$$
V = 2\pi\int_{0}^{1} x\cdot x^{2}\,dx = 2\pi\int_{0}^{1} x^{3}\,dx = 2\pi\cdot\frac{1}{4} = \frac{\pi}{2}
$$

### 例题 7

求曲线 $y = \dfrac{2}{3}x^{3/2}$ 在 $[0, 1]$ 上的弧长.

### 例题解答 7

$y' = x^{1/2}$，弧长公式：

$$
s = \int_{0}^{1}\sqrt{1 + x}\,dx = \left[\frac{2}{3}\left(1 + x\right)^{3/2}\right]_{0}^{1} = \frac{2}{3}\left(2\sqrt{2} - 1\right)
$$

### 例题 8

求摆线 $x = a\left(t - \sin t\right)$、$y = a\left(1 - \cos t\right)$ 一拱的弧长.

### 例题解答 8

$x'(t) = a\left(1 - \cos t\right)$，$y'(t) = a\sin t$：

$$
\left[x'(t)\right]^{2} + \left[y'(t)\right]^{2} = a^{2}\left[\left(1 - \cos t\right)^{2} + \sin^{2}t\right] = a^{2}\left(2 - 2\cos t\right) = 4a^{2}\sin^{2}\frac{t}{2}
$$

$$
s = \int_{0}^{2\pi}\sqrt{4a^{2}\sin^{2}\frac{t}{2}}\,dt = 2a\int_{0}^{2\pi}\left\lvert\sin\frac{t}{2}\right\rvert dt = 2a\int_{0}^{2\pi}\sin\frac{t}{2}\,dt = 8a
$$

（$\dfrac{t}{2} \in [0, \pi]$，$\sin$ 非负，绝对值可去.）

### 技巧

| 题型 | 手法 |
| :--- | :--- |
| 曲线围成的面积 | 先求交点定限，再判断哪条在上（代一个中间点即可），上减下 |
| 上下曲线交点多 | 在相邻两个交点之间分别积，再相加（面积不能互相抵消） |
| 参数方程面积 | $S = \displaystyle\int y\,dx = \int_{\alpha}^{\beta} y(t)x'(t)\,dt$，注意 $t$ 的走向与 $x$ 的走向一致 |
| 极坐标面积 | $\dfrac{1}{2}\displaystyle\int\rho^{2}d\theta$，别忘 $\dfrac{1}{2}$ |
| 绕 $x$ 轴体积 | 圆盘法 $\pi\displaystyle\int f^{2}dx$ |
| 绕 $y$ 轴体积 | 柱壳法 $2\pi\displaystyle\int x f(x)\,dx$；竖直切片转出来的是"薄圆环/薄壳" |
| 弧长 | 根号里的东西先化简（配方、三角恒等式），能开出来再积分 |
| 含绝对值的弧长 | 注意 $\sqrt{u^{2}} = \lvert u\rvert$，先定符号再去绝对值 |

### 易错点

暂时留空
