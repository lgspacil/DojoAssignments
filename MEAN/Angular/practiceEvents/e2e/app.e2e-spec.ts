import { PracticeEventsPage } from './app.po';

describe('practice-events App', () => {
  let page: PracticeEventsPage;

  beforeEach(() => {
    page = new PracticeEventsPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
