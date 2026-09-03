# 2023 편입영어 해설집 — GitHub Pages 배포

이 폴더는 **배포 전용**이다. 소스 저장소(`exam-qa`)와 분리해 둔 이유는 2022 쪽 README 의
「왜 따로 두는가」와 같다 — 원천자료 PDF 가 GitHub 개별 파일 100MB 한도를 넘고,
`exam-qa/.gitignore` 가 `dist/` 를 무시하는 것이 원래 설계다.

## 주소

```
https://jjsjb88-alt.github.io/eduwill-bupyeong-2023/       ← 2023 (이 저장소)
https://jbseo-commits.github.io/eduwill-bupyeong-2022/     ← 2022 (다른 «계정»)
```

🔴 **두 해는 계정이 다르다** — 2022 는 `jbseo-commits`, 2023 은 `jjsjb88-alt`.
자격증명도 갈리므로 한쪽에서 다른 쪽으로 push 할 수 없다. **각자 자기 폴더에서 `./배포.sh` 를 돌린다.**

## 갱신

```
cd /c/Users/jbseo/Desktop/exam-qa && python scripts/build_expl_html.py 2023 --scope sale
./배포.sh
```

`배포.sh` 는 통과할 때만 배포한다 — ① `parsed/2023` 이 산출물보다 새로우면 «막는다»(재빌드 필요)
② `gate_expl_html.py 2023 --scope sale` 이 FAIL 이면 «막는다» ③ 복사본 sha256 이 원본과 다르면 «막는다».
검사를 넘기려면 `--force` 지만, 학생이 돈을 내고 보는 상품임을 기억할 것.

🔴 **2022 스크립트와 검사 방식이 다르다.** 2022 쪽(`배포.sh`)은 블로커를 손으로 열거하고,
이쪽은 게이트를 그대로 부른다. 이쪽이 낫다 — 검사 목록이 한 곳에만 있어 낡지 않는다.

## 이 방식의 한계 — 알고 시작할 것

- **GitHub Pages 사이트는 «공개»다.** 저장소를 Private 으로 해도 사이트는 로그인 없이 열린다.
  접근 제어가 되는 Pages 는 GitHub Enterprise Cloud 플랜에만 있다.
- **이 HTML 은 자체 완결형이라 `Ctrl+S` 한 번으로 완전한 사본이 만들어진다.** 어떤 방법도 「최초 접근」만 통제한다.
- `robots.txt` 로 검색 색인만 막아 뒀다(`Disallow: /`). 주소를 아는 사람은 그대로 열 수 있다.
- 결제 검증이 필요해지면 사내 회원 시스템에 얹거나 Cloudflare Pages Functions 로 발급 코드를 검증하는 구조로 옮겨야 한다.

## 최초 1회 — Pages 켜기

저장소 **Settings → Pages → Source: Deploy from a branch → Branch: `main` / `(root)` → Save.**
1~2분 뒤 위 주소에서 열린다. **Free 플랜은 저장소가 Public 이어야 Pages 가 켜진다.**

## 파일

| 파일 | 뜻 |
|---|---|
| `index.html` | 해설집 본체. 파일명이 `index.html` 이라 폴더 URL 만으로 열린다 |
| `.nojekyll` | Jekyll 처리를 끈다. 없으면 `_` 로 시작하는 경로가 무시된다 |
| `robots.txt` | 검색 색인 차단 |
| `배포.sh` | 검사 후 배포 |
