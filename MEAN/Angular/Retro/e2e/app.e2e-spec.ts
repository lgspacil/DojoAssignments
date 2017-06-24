import { RetroPage } from './app.po';

describe('retro App', () => {
  let page: RetroPage;

  beforeEach(() => {
    page = new RetroPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
