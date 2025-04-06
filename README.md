# Nolan Welch's Personal Site

This is my personal website built with [Astro](https://astro.build), a modern static site builder. The site features a clean, modern design and is deployed using Cloudflare Workers.

## 🚀 Tech Stack

- **Framework**: Astro
- **Styling**: Tailwind CSS
- **Deployment**: Cloudflare Workers
- **Infrastructure**: Terraform
- **Code Quality**: ESLint, Prettier, Husky

## 📦 Development

### Prerequisites

- Node.js (latest LTS version recommended)
- npm or yarn
- Cloudflare account (for deployment)

### Local Development

1. Install dependencies:

   ```bash
   npm install
   ```

2. Start the development server:

   ```bash
   npm run dev
   ```

3. The site will be available at `http://localhost:4321`

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build production site
- `npm run preview` - Preview production build locally
- `npm run lint` - Run ESLint
- `npm run format` - Format code with Prettier

## 🚀 Deployment

The site is deployed using Cloudflare Workers, with infrastructure managed by Terraform. The deployment process is automated through GitHub Actions.

### Infrastructure

The Terraform configuration in the `terraform/` directory manages:

- Cloudflare Workers
- DNS configuration
- KV storage

### Deployment Process

1. Push changes to the main branch
2. GitHub Actions automatically builds and deploys the site
3. The site is served through Cloudflare's global network

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
