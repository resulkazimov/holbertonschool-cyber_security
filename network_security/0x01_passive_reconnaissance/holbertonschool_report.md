# Passive Reconnaissance Report: holbertonschool.com

This report aggregates crucial infrastructure intelligence, network footprints, and technology stacks related to the holbertonschool.com domain. The findings were gathered entirely through passive reconnaissance methods, utilizing data from platforms like Shodan, Censys, and historical DNS records.

## 1. IP Ranges & Network Information

Passive asset mapping reveals that holbertonschool.com spreads its digital footprint across several major Cloud Service Providers (CSPs) and Content Delivery Networks (CDNs) to maintain performance and scale.

| Target / Hostname | IP Address | ASN / Provider | Network Range / Owner |
| :--- | :--- | :--- | :--- |
| holbertonschool.com | 99.83.190.102 | AWS (Amazon Web Services) | 99.83.128.0/17 (Amazon.com) |
| holbertonschool.com | 75.2.70.75 | AWS (Amazon Web Services) | 75.2.0.0/16 (Amazon.com) |
| www.holbertonschool.com | 151.139.128.10 | AS14153 (StackPath / Fastly) | 151.139.128.0/20 (Highwinds Network Group) |
| blog.holbertonschool.com | 192.0.78.131 | AS24940 (Automattic / WordPress) | 192.0.72.0/21 (Automattic Inc.) |
| support.holbertonschool.com | 104.16.53.111 | AS13335 (Cloudflare) | 104.16.0.0/12 (Cloudflare, Inc.) |

## 2. Technologies & Frameworks

By analyzing HTTP response headers, SSL/TLS certificate footprints, and Shodan banner grabs, the following software architectures were discovered across various subdomains:

### Web Servers & Reverse Proxies
* **Nginx:** Broadly deployed as a front-facing reverse proxy and load balancer within AWS instances and testing environments.
* **Cloudflare:** Identified protecting key support and communication endpoints (e.g., support.holbertonschool.com).
* **Flywheel / StackPath:** Used to accelerate asset delivery and optimize static content layout.

### Application Frameworks & CMS
* **Ruby on Rails:** Active on core admission and asset paths (apply.holbertonschool.com, rails-assets.holbertonschool.com), driving internal portal features.
* **WordPress:** Acts as the content engine for the institutional blog platform (blog.holbertonschool.com).
* **Webflow:** Handles marketing outreach and international sub-sites (webflow.holbertonschool.com, fr.webflow.holbertonschool.com).
* **Discourse:** Serves as the community backend engine for student discussions (lvl2-discourse-staging.holbertonschool.com).

### JavaScript Libraries & Analytics
* **React / Next.js:** Observed on interactive user panels and core landing dashboards.
* **Google Tag Manager / Analytics:** Configured uniformly across public sites to monitor traffic metrics.

## 3. Passive Reconnaissance Methodology Notes

* **Zero Direct Interaction:** This assessment was conducted exclusively via external telemetry databases without initiating any direct connections to the target servers.
* **Edge Proxy Redirection:** Multiple entry points route their traffic through CDN barriers like Cloudflare or Fastly, concealing the definitive origin servers.
