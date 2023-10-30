# Vanilla Style Custom Crafter

カスタムワークベンチを追加するデータパック

## 目次

- [Vanilla Style Custom Crafter](#vanilla-style-custom-crafter)
  - [目次](#目次)
  - [開発上の注意](#開発上の注意)
    - [lint-rulesに関する設定](#lint-rulesに関する設定)
    - [定義をする場所、定義名について](#定義をする場所定義名について)
      - [定義場所](#定義場所)
      - [定義名](#定義名)
    - [定義済みデータに関する情報](#定義済みデータに関する情報)

## 開発上の注意

### lint-rulesに関する設定

基本的にタグやスコアホルダーなどは定義されていないと警告が出るように設定されています。  
必ず定義をしてから使用するようにしてください。  
定義するファイルや定義名などは[定義をする場所、定義名について](#定義をする場所定義名について)を参照してください。
アクセス修飾子については[こちら](https://github.com/ChenCMD/datapack-helper-plus-JP/wiki/Access-Modifiers#namespaced-id-pattern)を参照

### 定義をする場所、定義名について

#### 定義場所

基本的にアクセス修飾子がpublicやinternalになるものはvsc_core:load内に定義を記述するようにしてください。  
一時的なスコアホルダーや一部のフォルダ内でしか使用しないようなものについてはそれぞれのフォルダ、ファイル内で記述して大丈夫です。

#### 定義名

定義名に関しては特に理由がなければ`VSC.`もしくは`vsc.`を接頭辞としてつけるようにしてください。  

### 定義済みデータに関する情報

アクセス修飾子がinternalやpublicになっているものをここに書いていきます。
