// @ts-check
const { test, expect } = require('@playwright/test');

test('has title', async ({ page }) => {
  await page.goto('https://playwright.dev/');

  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/Playwright/);
});

test('env link', async ({ page }) => {
  const reactAppServerURL = process.env.REACT_APP_SERVER_URL || 'http://localhost:3000';
  await page.goto(reactAppServerURL);
});