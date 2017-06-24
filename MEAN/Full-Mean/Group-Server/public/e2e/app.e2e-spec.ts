import { AngularGroupPage } from './app.po';

describe('angular-group App', () => {
  let page: AngularGroupPage;

  beforeEach(() => {
    page = new AngularGroupPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
