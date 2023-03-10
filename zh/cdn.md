# 网络架构 和 CDN 的花式玩法

## Cloudflare

### CNAME

[CloudFlare 免费 CNAME 接入教程](https://luotianyi.vc/6185.html)

### 刷新

[上传后刷新 CDN](https://github.com/user-tax/site/blob/main/sh/cloudflare.js)

```
await cloudflare(
  "purge_cache"
  {
    files:[
      url
    ]
  }
)
```
## 多吉云

国内价格便宜

### 刷新

[刷新接口](https://www.npmjs.com/package/@u7/doge)

```
doge(
  'cdn/refresh/add.json'
  {
    rtype: 'url'
    urls: JSON.stringify([
      'https://usr.tax/v'
    ])
  }
)
```

### 自动更新证书

## DNSPOD

按中国境内境外区分解析地址。

## 阿里云

[边缘脚本 EdgeScript](https://help.aliyun.com/document_detail/126565.html)

[对象存储自动刷新 CDN](https://developer.aliyun.com/article/759596)

## rathole 端口映射
